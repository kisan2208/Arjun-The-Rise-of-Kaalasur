extends CharacterBody2D
# Milestone 1 — Arjun movement prototype.
# Ye sirf test movement hai, final art / final controls nahi hai.
# Controls (sirf test ke liye, ROSE badal sakti hai):
#   Left / Right arrow ya A / D = chalna
#   Space = jump
# Jump height: 540 * 540 / (2 * 1300) = lagbhag 112 pixel.
# Isliye platform ke beech ka gap 88 pixel rakha hai, jump aaram se pahunchega.

const SPEED = 240.0
const JUMP_VELOCITY = -540.0
const GRAVITY = 1300.0

var walk_time = 0.0
var facing_right = true

@onready var visual = $Visual
@onready var body = $Visual/Body
@onready var leg_left = $Visual/LegLeft
@onready var leg_right = $Visual/LegRight

func _physics_process(delta):
	# Gravity: hawa mein ho to neeche giro.
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Jump: sirf ground par ho tabhi, Space dabane par.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

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
	_animate(delta, direction)

func _animate(delta, direction):
	# Direction ke hisaab se Arjun ko left / right ghumao.
	# Sirf Visual ghumta hai, collision shape nahi.
	if facing_right:
		visual.scale.x = 1.0
	else:
		visual.scale.x = -1.0

	# Walk kar raha hai aur ground par hai: pair aage-peeche, body halka upar-neeche.
	if direction != 0.0 and is_on_floor():
		walk_time += delta * 10.0
		var step = sin(walk_time)
		leg_left.position.y = -step * 4.0
		leg_right.position.y = step * 4.0
		body.position.y = -abs(step) * 2.0
	else:
		# Idle: pair wapas, body seedha. Hawa mein: pair seedhe.
		walk_time = 0.0
		leg_left.position.y = 0.0
		leg_right.position.y = 0.0
		body.position.y = 0.0
