extends CharacterBody2D
# Arjun player prototype (v5: animations + double jump + attack test).
# Ye sirf test controls hain, final controls nahi hai.
# Controls (sirf test ke liye, ROSE badal sakti hai):
#   Left / Right arrow ya A / D = chalna
#   Space = jump, hawa mein dobara Space = double jump
#   J = attack (TEMPORARY key, final nahi)
# Jump height: 540 * 540 / (2 * 1300) = lagbhag 112 pixel.

signal attack_hit(target)

const SPEED = 240.0
const JUMP_VELOCITY = -540.0
const GRAVITY = 1300.0
const MAX_JUMPS = 2          # ground jump + 1 double jump
const ATTACK_TIME = 0.25     # hitbox kitni der active rahe (seconds)
const ATTACK_COOLDOWN = 0.15 # attack ke baad agla attack kab

var walk_time = 0.0
var facing_right = true
var body_base_y = 0.0
var jumps_used = 0
var did_double_jump = false
var attack_timer = 0.0
var cooldown_timer = 0.0
var hit_this_attack = []

@onready var visual = $Visual
@onready var body = $Visual/Body
@onready var hitbox = $Visual/AttackHitbox
@onready var hitbox_shape = $Visual/AttackHitbox/CollisionShape2D
@onready var hitbox_debug = $Visual/AttackHitbox/DebugRect

func _ready():
	body_base_y = body.position.y
	hitbox.body_entered.connect(_on_hitbox_body_entered)
	_set_hitbox(false)

func _unhandled_input(event):
	# J = attack. Sirf ek press, key hold karne se repeat nahi.
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_J:
		_try_attack()

func _physics_process(delta):
	# Gravity: hawa mein ho to neeche giro.
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Ground par: jumps reset. Bina jump kiye girne par sirf double jump bachta hai.
	if is_on_floor():
		jumps_used = 0
		did_double_jump = false
	elif jumps_used == 0:
		jumps_used = 1

	# Jump + double jump: Space.
	if Input.is_action_just_pressed("ui_accept") and jumps_used < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		if jumps_used >= 1:
			did_double_jump = true
			body.play("double_jump")
		jumps_used += 1

	# Left / Right: arrow keys + A / D dono chalte hain.
	var direction = Input.get_axis("ui_left", "ui_right")
	if Input.is_key_pressed(KEY_A):
		direction = -1.0
	if Input.is_key_pressed(KEY_D):
		direction = 1.0

	if direction != 0.0:
		velocity.x = direction * SPEED
		facing_right = direction > 0.0
	else:
		velocity.x = move_toward(velocity.x, 0.0, SPEED)

	move_and_slide()
	_update_attack(delta)
	_animate(delta, direction)

func _try_attack():
	if attack_timer > 0.0 or cooldown_timer > 0.0:
		return
	attack_timer = ATTACK_TIME
	hit_this_attack.clear()
	_set_hitbox(true)

func _update_attack(delta):
	if cooldown_timer > 0.0:
		cooldown_timer -= delta
	if attack_timer > 0.0:
		attack_timer -= delta
		if attack_timer <= 0.0:
			_set_hitbox(false)
			cooldown_timer = ATTACK_COOLDOWN

func _set_hitbox(on):
	hitbox.monitoring = on
	hitbox_shape.set_deferred("disabled", not on)
	hitbox_debug.visible = on

func _on_hitbox_body_entered(target):
	# Ek attack mein ek target ko ek hi baar hit karo. Damage / HP abhi decide nahi hua.
	if target == self or target in hit_this_attack:
		return
	hit_this_attack.append(target)
	attack_hit.emit(target)

func _animate(delta, direction):
	# Sirf Visual ghumta hai, collision shape nahi. Hitbox bhi Visual ke saath ghumta hai.
	visual.scale.x = 1.0 if facing_right else -1.0

	var running = direction != 0.0 and is_on_floor()
	var in_air = not is_on_floor()

	# Body bob: chalte waqt halka upar-neeche.
	if running:
		walk_time += delta * 10.0
		body.position.y = body_base_y - abs(sin(walk_time)) * 2.0
	else:
		walk_time = 0.0
		body.position.y = body_base_y

	# Animation: hawa mein = jump / double_jump, chalte = run, warna idle.
	# Attack ka apna animation abhi nahi hai (frames nahi hain).
	var anim = "idle"
	if in_air:
		anim = "double_jump" if did_double_jump else "jump"
	elif running:
		anim = "run"
	if body.animation != anim:
		body.play(anim)
