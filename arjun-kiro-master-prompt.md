# Arjun: The Rise of Kaalasur — Master File for Kiro IDE

**For ROSE — how to use this file in Kiro (Hinglish, short):**
1. Kiro IDE kholo, aur apna Godot project folder kholo: `Arjun-The-Rise-of-Kaalasur`
2. Ye file Kiro ko do — upload karo ya copy-paste karo.
3. Saath mein main character image bhi attach karo: `assets/characters/arjun.png` (64x64, locked sharp sprite)
4. Neeche wala **“COPY-PASTE PROMPT FOR KIRO”** poora copy karke Kiro mein paste karo.
5. Kiro se ek time par ek milestone karwao. Poora game ek saath mat banwao.

> Ye file MD hai, PDF nahi — token bachane ke liye.

---

## COPY-PASTE PROMPT FOR KIRO

Copy everything inside the box below and paste it into Kiro IDE. Attach `arjun.png` with it.

```
You are helping build "Arjun: The Rise of Kaalasur", a 2D high-detail
cinematic pixel-art action-adventure / metroidvania game in Godot 4.

FIRST, read this whole file before doing anything. Then inspect the
actual project folder I give you — do not assume anything is built.

GAME SUMMARY:
Hero Arjun's elder brother Devansh is kidnapped by Nishachar Dal,
because Devansh's hidden power can open the Demon Gate. Arjun tries
to stop them, is defeated, and is saved by his mentor Rishivar, who
teaches him magic. Arjun must travel through 4 elemental biomes —
Ice, Wind, Earth/Rock Cave, Fire — defeat each biome's guardian,
collect 4 elemental fragments (Ice, Wind, Earth, Fire), and use them
to forge/awaken the Divine Sword. Final goal: reach the Demon Gate,
face Nishachar Dal leader Kalanemi, save Devansh, and confront
Kaalasur, the Demon King. Build Ending A first: Seal the Gate, save
Devansh. Endings B and C come later.

LOCKED CANON — DO NOT CHANGE WITHOUT ROSE'S APPROVAL:
- Arjun (hero), Devansh (elder brother, kidnapped), Rishivar (mentor)
- Nishachar Dal (organization, NOT "Akatsuki"). Leader: Kalanemi —
  male dark mage, high magic attack, intelligent, can recover HP.
  Members: Maya (illusions), Bhaisaur (half human, half bull, high
  physical attack, less intelligence).
- Final villain: Kaalasur, Demon King.
- Biome order: 1. Ice, 2. Wind, 3. Earth/Rock Cave, 4. Fire.
  Guardians are the bosses of each biome.
- Ending A first. Art: 2D pixel art ONLY, 64x64 characters and tiles.
  PC first, Android later. Engine: Godot 4.
- Main character sprite is LOCKED: assets/characters/arjun.png —
  64x64 transparent, sharp 32-colour version of ROSE's own
  turnaround Right view. Red headband and flowing red scarf,
  black-gold top, white dhoti, gold belt/armlets, sword on back.
  Do NOT replace it with generated art. ROSE's own art is the standard.

DO NOT INVENT — THESE ARE NOT DECIDED YET:
Guardian names (all 4), Divine Sword design and forge place,
controls (final), HP/Mana rules, Arjun's exact age, Devansh's
appearance/backstory, Rishivar's history/fate, Kaalasur's exact
appearance/origin/powers, final fight order, combat combo/parry
details. If you need one of these, propose it as an idea and STOP
and ask ROSE — do not treat your proposal as canon.

TECHNICAL FACTS (already in the project):
- Godot 4, project name "Arjun: The Rise of Kaalasur"
- Main scene: res://scenes/levels/main.tscn
- Viewport: 1152x648, textures/canvas_textures/default_texture_filter=0
  (NEAREST, crisp pixels), clear colour dark (0.05, 0.05, 0.09)
- Milestone 0 DONE and PASSED in Godot 4.6.2: clean foundation,
  folder structure, main scene opens without errors.
- Milestone 1 BUILT, test pending: scripts/player/player.gd —
  CharacterBody2D, SPEED 240, JUMP_VELOCITY -540, GRAVITY 1300
  (jump height ~112px). Test level: ground top y=584, left/right
  walls, 3 platforms tops y=472, 384, 296 (gap 88px), player spawn
  (200, 552). TEMPORARY test controls only: Left/Right arrow or
  A/D = move, Space = jump. These are NOT final canon controls.
- Player scene: scenes/player/player.tscn — Sprite2D uses arjun.png,
  CollisionShape2D 48x64, Visual flips left/right, Scarf node with
  3 red strands that flow back while running and lift while jumping.
- GitHub: https://github.com/kisan2208/Arjun-The-Rise-of-Kaalasur.git
  (public, main branch). Do NOT commit or push unless ROSE says so.
  .godot/ must stay ignored via .gitignore.

PIXELFX — VISUAL EFFECTS ONLY:
- Repo: https://github.com/patch-gg/pixelfx — 244 code-drawn pixel
  art effects, MIT licensed. Effects are code, not images.
- Use it ONLY for visual effects: sword slash, magic projectiles,
  elemental attacks, hit feedback, boss effects, snow/embers/dust.
- Workflow: inspect the repo README first, pick ONE effect, export
  it as a transparent PNG sprite sheet + JSON with
  `node tools/render.mjs <effect-name> --sheet`, verify frame size,
  frame count, speed, loop and transparency, then test it in an
  isolated Godot test scene before connecting it to gameplay.
  Keep effects readable — they must not hide the player, enemies
  or hazards. Keep crisp pixel edges, no blur.
- PixelFX is NOT for character animation, tilesets, level design,
  gameplay code or sound. An effect exports as a SEPARATE sheet,
  never as Arjun himself.
- Shortlist (NOT chosen/exported yet — export only the one ROSE picks):
  Ice fragment = frost-nova, Wind fragment = leaf-storm
  (PixelFX has no dedicated wind category, leaf-storm is closest),
  Earth fragment = earth-spike, Fire fragment = fireball-throw,
  Magic combo = arcane-missiles.

SKILLS AND TOOLS TO USE (see Sections 10-14 in this file for full details):
- Game-dev skills: awesome-gamedev-agent-skills — router + Godot 16
  skills. Let the router pick the right skills; do not load all 79.
- Character skill: sprite-forge — use ONLY to pose/animate the
  locked Arjun image, never to replace Arjun with a new character.
- Pixel assets: Free Game Dev Assets / Kenney CC0 / 0x72 — tiles,
  props and backgrounds only, never Arjun. Check licence first.
- Kiro-to-Godot: godot-ai MCP — use it to drive the live Godot
  editor when it is connected. Needs Godot 4.7+; ROSE is on 4.6.2,
  so check the version first and do not claim it works untested.
- Organisation skill: godot-game-pm-orchestrator — use ONLY if
  ROSE is running multiple agents; otherwise use the router skill.

HOW TO WORK:
1. First inspect the project and report its ACTUAL state.
2. Work ONE milestone at a time. Do not build all systems at once.
3. Keep the game playable after every milestone.
4. Test in Godot before saying anything works. If you cannot test
   it in Godot, say clearly "Not tested in Godot".
5. Only change the files needed for that milestone. Do not overwrite
   unrelated work or the locked arjun.png.
6. Ask ROSE before any story / GDD / art-direction / gameplay change.
7. Report every step with these headings:
   Inspected / Plan / Changed / Tested / Not tested / Next step.

START NOW: Inspect the project, confirm Milestone 0 + Milestone 1
files are present as described above, and tell ROSE the ONE next
step — the Milestone 1 Play test (move, jump, climb all 3 platforms).
Do NOT start Milestone 2 until ROSE says Milestone 1 passed.
```

---

## 1. Full Story

### Prologue — The Kidnapping
Arjun and his elder brother Devansh live together. Nishachar Dal arrives to kidnap Devansh — kidnapping only, they do not destroy the village or launch a mass attack in this scene. Arjun sees it, tries to stop them, fights, and is defeated. Nishachar Dal escapes with Devansh. Rishivar arrives and saves Arjun.

### Act I — The Master's Revelation
Rishivar explains: Devansh has a rare, hidden power connected to opening the Demon Gate. Nishachar Dal wants to use Devansh to reach / awaken the Demon World. Four elemental fragments are connected to the Divine Sword and the means to oppose the demonic threat. Rishivar trains Arjun and teaches him magic. Training must be taught through gameplay, not only dialogue. The player learns basic controls and combat here.

### Act II — The Four Elemental Regions
Arjun travels through 4 biomes, in this order. Each has enemies, environmental challenges, a guardian boss, and one fragment:

| # | Biome | Theme | Fragment |
|---|---|---|---|
| 1 | Ice | Frozen landscapes, ice caves, snow, cold ruins | Ice Fragment |
| 2 | Wind | High cliffs, floating/elevated ruins, strong winds, exposed paths | Wind Fragment |
| 3 | Earth / Rock Cave | Underground passages, stone structures, caverns, ancient ruins | Earth Fragment |
| 4 | Fire | Volcanic terrain, lava, scorched ruins, fire-lit caves | Fire Fragment |

One fragment comes from each biome's guardian. All 4 are needed to unlock the final progression.

### Act III — The Divine Sword and the Truth
The 4 fragments are brought together to create / restore / awaken the Divine Sword. The story should reveal: why Devansh's power can open the Demon Gate, why Nishachar Dal wants him, how their plan serves Kaalasur, what the Divine Sword can and cannot do, and the consequences of opening the Demon Gate. Do NOT invent a detailed ancient history, prophecy, betrayal or family secret as canon — propose it as an idea for approval.

### Act IV — Final Stronghold and Demon World
After all 4 fragments, the final area unlocks. Arjun advances to Nishachar Dal's stronghold and the Demon Gate. The final sequence must test all combat/abilities learned, bring the Nishachar Dal conflict to its climax, resolve Devansh's kidnapping and his role in the Demon Gate, and lead to Kaalasur. The exact order of the Kalanemi fight, Devansh rescue, and Kaalasur fight is NOT finalized yet.

### Endings (proposed, not all locked to build now)
- **Ending A — Seal the Gate and save Devansh (BUILD FIRST):** Arjun stops the threat, saves Devansh, seals the Demon Gate.
- **Ending B — Enter the Demon World and defeat Kaalasur (later):** Arjun enters the Demon World and confronts Kaalasur directly.
- **Ending C — The Divine Sword is lost (later):** Arjun must fight the final challenge with an ordinary sword.

Build one complete, playable ending (A) first. B and C only if scope allows.

---

## 2. Characters — Locked Facts Only

- **Arjun — Protagonist / player character.** Motivation: rescue Devansh, stop the Demon World's return. Starts defeated, learns combat and magic from Rishivar, grows through the 4 regions, gains the Divine Sword. Exact age, full personality and full move list are NOT locked.
- **Devansh — Elder brother.** Kidnapped because his hidden power can open the Demon Gate. The emotional centre of the game is the brothers' bond. Do NOT portray him as willingly joining Nishachar Dal unless ROSE approves it.
- **Rishivar — Master.** Saves Arjun, reveals the truth, teaches magic. Can introduce training, tutorials, lore and progression. Age, backstory, exact look and fate are NOT finalized.
- **Maya — Nishachar Dal member (female).** Illusions. Illusion encounters must stay fair and readable (decoys, confusing visuals). Rank, history, motivations and boss status are NOT finalized.
- **Bhaisaur — Nishachar Dal member (male Asur).** Half human, half bull. Great physical strength, high physical attack, less intelligence. Heavy, readable telegraphed attacks. Rank, history, motivations and boss status are NOT finalized.
- **Kalanemi — Nishachar Dal Leader (male, separate from Maya and Bhaisaur).** Dark mage, high magic attack, intelligent, can recover HP. History, motivations and boss status are NOT finalized.
- **Kaalasur — Demon King, main antagonist.** The ultimate threat behind the Demon World and the Demon Gate. The title refers to his rise. Appearance, origin, personality, powers and relationship to Nishachar Dal are NOT fully specified — do not invent them as facts.
- **Nishachar Dal — Antagonist organization.** Kidnapped Devansh to use his power to open the Demon Gate. Full hierarchy and full membership are NOT finalized. Do not copy any other franchise with a similar name — use only this game's original lore. Old name "Akatsuki" was replaced by ROSE on 2026-11-06; 0 "Akatsuki" left in the GDD.

---

## 3. Gameplay Direction

- Genre: 2D action-adventure / metroidvania, Godot 4, PC first, Android later.
- Pillars: exploration through distinct biomes, combat vs regular enemies and bosses, magic taught by Rishivar, collecting 4 fragments, character/ability progression, story-driven rescue motivation, climactic final fight.
- Combat principles: responsive controls, readable enemy anticipation and recovery, bosses with recognizable patterns and distinct identities, clear damage feedback, effects must not obscure hitboxes or hazards. Do not add complex systems before a basic combat prototype works.
- Magic: Rishivar teaches Arjun magic after the kidnapping. Exact spell list, resource cost, cooldowns, upgrade tree and input mapping are NOT locked.
- **NOT locked — do not assume:** final control layout, health system, stamina/mana rules, combo system, dodge/parry mechanics, weapon inventory, checkpoints, difficulty settings. Do NOT assume a Souls-like system just because it is common. ROSE likes Souls-like / Sekiro-style parry as an interest, but it is NOT locked canon for this game — propose it and get approval first.

---

## 4. Art Direction — Locked

- **2D pixel art ONLY. No 3D, no 2.5D, no low-poly, no hand-painted 3D.**
- Characters: 64x64 base. Tiles: 64x64 per tile. Large bosses/effects/props/backgrounds may be larger only if pixel scale stays consistent.
- Style: high-detail, cinematic pixel art — detailed, readable, strong silhouettes, strong contrast, atmospheric lighting, layered 2D parallax backgrounds, distinct visual identity per biome. Dungeon Slasher (96Percent) was ROSE's style reference: detailed pixel art, rich colours, strong outlines, atmospheric — NOT flat retro.
- Crisp pixels: NEAREST filter, no accidental blur, no unwanted anti-aliasing, no uneven pixel scales.
- Animation sets to plan (not claims they exist): Arjun — idle, walk/run, jump, fall, land, attack, hurt, death, magic casting. Maya — movement, illusion, magic attack. Bhaisaur — heavy movement, physical attacks, hit reactions, defeat. Kaalasur — reveal, idle, attacks, phase changes, damage, defeat.

### Main Character Image — What to attach in Kiro
Attach this file with the prompt: `assets/characters/arjun.png`
- **LOCKED, approved by ROSE on 2026-11-06 ("Ye thik h").** 64x64 transparent PNG, character 30x64 inside the canvas.
- Sharp 32-colour version of ROSE's own 4-direction turnaround Right view (front/right/back/left turnaround file: `arjun_turnaround_reference.png`). Same file as `arjun_sharp.png` — verified identical.
- Look: red headband, long flowing red scarf, black-gold top, white dhoti, gold belt/armlets, sword on back. Spiky black hair.
- Left view flips automatically in Godot via Visual scale. Do NOT generate a replacement sprite — ROSE rejected a generated bold version on 2026-11-06 ("ye to aur becar h, pahale wala hi sahi tha"). Her own turnaround art is the standard.
- Scarf animation is already in the project: `scenes/player/player.tscn` has a Scarf node with 3 red strands + code in `scripts/player/player.gd` — flows back while running, lifts while jumping, gentle sway while idle.
- Extra animation material (NOT yet confirmed): 17 frames sent 2026-11-15, `assets/characters/arjun_spritesheet.png` (1496x88, 17 frames in one row) and Godot-ready `assets/characters/arjun_spritesheet_64.png` (1088x64, NEAREST resize). Each frame was 88x88 transparent. Animation name is NOT confirmed yet — it looks like idle with scarf movement. ROSE to confirm Idle / Walk / etc. Do not guess the name.
- Full animation sheet original file is still pending — the screenshot crop `arjun_sheet_reference.png` has a black background and cannot be cleanly sliced. If ROSE sends the original file, slice its 8 rows: Idle, Walk, Run, Jump, Attack (Sword), Magic/Skill, Hurt, Die.

---

## 5. PixelFX Skill — Full Instructions for Kiro

PixelFX is a skill / library for **visual effects only**.

- **Repo:** https://github.com/patch-gg/pixelfx
- **What it is:** 244 code-drawn pixel art effects, MIT licensed. Every effect is small code, not an image. Categories include fire, explosions, magic, ice, weather, UI, pickups.
- **What to use it for in this game:** sword slash and weapon trails, fireball and magic projectiles, elemental ice/wind/earth/fire effects, enemy hit/damage feedback, boss attacks and phase transitions, defeat explosions, environmental snow/embers/dust/wind, pickups and fragment collection effects.
- **What NOT to use it for:** character animation, tilesets, level design, gameplay programming, sound design. It is not a complete game-art solution.
- **Workflow (follow in order):**
  1. Open the PixelFX repo and read its README / docs first. Do not assume a command, path or output format.
  2. Pick ONE effect that fits the cinematic pixel-art direction.
  3. Export it as a transparent PNG sprite sheet + JSON metadata: `node tools/render.mjs <effect-name> --sheet`
  4. Verify frame dimensions, frame count, animation speed, loop setting, pivot and transparency against the exported JSON.
  5. Keep crisp pixel edges — no blur, no accidental anti-aliasing.
  6. Import into Godot and test in an isolated test scene first, before connecting it to gameplay.
  7. Check the effect does not hide the player, enemies, hazards or attack timing.
  8. Record source, effect name, settings and export details so it can be regenerated. Follow the MIT license / attribution rules.
  9. Save exports under `assets/vfx/` with the effect name, do not overwrite existing work.
- **Shortlist for this game (from 2026-11-20, nothing chosen or exported yet):**
  - Ice fragment: `frost-nova` (category: ice)
  - Wind fragment: `leaf-storm` (category: nature — PixelFX has no dedicated wind category, leaf-storm is the closest wind-like effect)
  - Earth fragment: `earth-spike` (category: nature)
  - Fire fragment: `fireball-throw` (category: moves)
  - Magic combo: `arcane-missiles` (category: arcane)
  - Also useful later: sword slash / double slash, arcane orb.
  - **Export only the ONE effect ROSE picks, as a separate sheet. Do not export all of them at once.**
- **Current PixelFX status:** No effect has been chosen or exported yet.

---

## 6. Current Project Status (as of 2026-11-22 — verify in Kiro before working)

- **Project folder:** `Arjun-The-Rise-of-Kaalasur/` — Godot 4 project.
- **Milestone 0 — DONE and PASSED:** Clean foundation, 28 files, main scene with title + 64x64 placeholder Arjun, folder structure per GDD Section 10, README / CHANGELOG / HANDOFF / AGENTS.md. ROSE tested in Godot 4.6.2 on 2026-11-06 — main scene opens correctly, no errors.
- **Milestone 1 — BUILT, ROSE's Play test still pending:** Player CharacterBody2D (move + jump, idle/walk placeholder animation), test level with ground + 2 walls + 3 platforms. Files: `scripts/player/player.gd`, `scenes/player/player.tscn`, `scenes/levels/main.tscn`, `scenes/levels/main.gd`. Not tested in Godot editor by Muse (no Godot binary in that VM) — ROSE to test on her laptop.
- **Milestone 1 test to do in Godot:** Play, move Left/Right or A/D, jump with Space, climb all 3 platforms, check no clipping through ground/walls. If all works, ROSE replies "pass" and Milestone 1 is complete.
- **GitHub:** https://github.com/kisan2208/Arjun-The-Rise-of-Kaalasur.git — public, main branch. `.godot/` is ignored by `.gitignore`. Never commit/push unless ROSE explicitly says so.
- **Roadmap (from GDD, one at a time):** M0 Foundation (done) → M1 Art + movement prototype → M2 Basic combat → M3 PixelFX effects → M4 Magic and training → M5 Prologue → M6 First biome (Ice) vertical slice → M7 Remaining biomes (Wind, Earth, Fire) → M8 Divine Sword + final region → M9 Ending, polish, release prep (PC first, Android later).

### Project structure (proposed in GDD, create only what a milestone needs)
```
Arjun-The-Rise-of-Kaalasur/
├── project.godot
├── AGENTS.md, README.md, CHANGELOG.md, HANDOFF.md
├── assets/characters/ enemies/ bosses/ tilesets/ backgrounds/ vfx/ audio/ ui/
├── scenes/player/ enemies/ bosses/ levels/ ui/ effects/
├── scripts/player/ enemies/ bosses/ systems/ ui/
└── resources/characters/ items/ combat/
```

---

## 7. Rules for ANY AI Agent Working on This Game

1. Read this file + the GDD + `AGENTS.md` first. Inspect actual files — do not assume anything exists.
2. Ask ROSE before ANY story / GDD / character / art-direction / gameplay change, even if you suggest it.
3. Work one milestone at a time. Keep the game playable after each milestone.
4. Do not invent canon (see "DO NOT INVENT" list above). Propose ideas clearly marked as proposals, wait for approval.
5. 2D pixel art only, 64x64 characters/tiles. Do not replace the locked `arjun.png`.
6. MD files, not PDF — ROSE prefers MD to save tokens. Only send the necessary changed/new files per milestone, not the whole project zip.
7. Guided DIY mode: ROSE does the work herself in Godot, the AI guides step-by-step and gives code / files. Explain in very simple, step-by-step Hinglish for ROSE.
8. Test in Godot before claiming complete. Report: Inspected / Plan / Changed / Tested / Not tested / Next step.
9. Git: commit/push only when ROSE explicitly says so.
10. Do not claim progress that has not been verified. Do not silently rewrite story, names or relationships.

---

## 8. Open Decisions — Ask ROSE, Do Not Guess

- 4 guardian names and designs
- Divine Sword design, powers, forge place / ritual
- Final controls, HP/Mana rules, combo / dodge / parry details
- Arjun's exact age and full personality, Devansh's appearance/backstory, Rishivar's history/fate
- Maya's and Bhaisaur's exact roles and encounter placement
- Kaalasur's appearance, origin, powers, final design
- Order of final stronghold / Devansh rescue / Kaalasur fight
- Whether all 3 endings will be implemented, final resolution / UI design
- Animation name for the 17-frame sprite sheet (Idle? Walk?)

---

## 9. Sources for This File

- GDD: `workspace/user/files/Arjun_The_Rise_of_Kaalasur_Game_Design_Document.md` (shared 2026-11-05, updated 2026-11-06: Nishachar Dal, Kalanemi)
- Plan: `workspace/your_files/arjun-plan.md`
- Project: `~/workspace/Arjun-The-Rise-of-Kaalasur/` — Milestone 0 + Milestone 1, GitHub repo above
- Main character: `assets/characters/arjun.png` (= `arjun_sharp.png`, approved 2026-11-06), turnaround `arjun_turnaround_reference.png`, 17-frame sheet `arjun_spritesheet_64.png`
- PixelFX: https://github.com/patch-gg/pixelfx — shortlist given 2026-11-20, nothing exported yet

*If anything in this file conflicts with what ROSE says latest, ROSE's latest word wins. Ask her before changing canon.*

---

## 10. 2D Pixel Asset Repos — For Tiles / Props / Enemies ONLY (added 2026-11-22)

**Warning for Kiro: DO NOT use these packs to replace the locked Arjun sprite (`assets/characters/arjun.png`). Arjun is ROSE's own art and is locked. Use these packs only for tilesets, backgrounds, props, UI, and placeholder / secondary enemies — and only after ROSE approves a pack.**

- **Free Game Dev Assets — https://github.com/TMHSDigital/Free-Game-Dev-Assets**
  - Curated catalog of 457 free, commercially usable sources, with the licence read at its source and the date recorded. 2D category has 71 entries: sprites, tilesets, UI/HUD, icons, palettes. Use the "2D pixel platformer" starter stack for a side-scrolling pixel platformer. It also has a Godot 4 dock add-on to search the catalog inside the editor. Check the source licence before shipping.
- **Kenney CC0 packs — via https://github.com/eturner58/game-assets**
  - 297 packs, 144,324 files, mostly CC0 Kenney work: 2D sprites, UI, icons, audio, 6,691 sliced tiles. Do NOT clone the whole repo (523 MB). Download only the one pack ROSE picks.
- **0x72 Dungeon Tileset (16x16, CC0)**
  - Classic dungeon tiles: walls, floors, doors, torches, chests, characters. Listed in the Free Game Dev Assets catalog. Best fit for the Earth / Rock Cave biome. Dungeon Tileset II is the newer sibling.
- **PixelFX — see Section 5.** Effects only, not characters or tilesets.

Rule: pick ONE pack per need, check its licence, keep the style consistent with Arjun (64x64, crisp pixels, Dungeon Slasher-like detailed pixel art), and do not mix many different art styles in one biome.

---

## 11. Character-Generation Skill — sprite-forge (added 2026-11-22)

**Best fit for Arjun, because ROSE already has his image.**

- **Repo: https://github.com/isabellagreco1997/sprite-forge — MIT**
- **What it does:** Turns any pixel-art image — real or AI-generated — into clean game sprites, new poses and animations that keep the character consistent. Tools: `extract` (cut character out of a screenshot), `snap` (find the native pixel grid, quantise the palette to a real 1x sprite, sharper than the source), `dump` (palette-indexed ASCII map for pixel-exact edits), `parts` (segment limbs), re-pose, `idle_loop`, `walk_cycle`.
- **Install (on the machine Kiro works on):**
  ```
  git clone https://github.com/isabellagreco1997/sprite-forge
  cd sprite-forge
  pip install -e .   # pillow, numpy, scipy + the `spriteforge` command
  ```
- **Use for Arjun:** Start from the locked `arjun.png` / turnaround. Do NOT generate a new Arjun from text. Use sprite-forge only to make new poses / idle / walk frames from the existing locked sprite, in the same palette and shading.
- **Use for new characters (Maya, Bhaisaur, Kalanemi, Kaalasur, guardians):** Only after ROSE approves their look. Generate / draw one anchor reference image first, then use sprite-forge to pose and animate it.
- **Alternative (new characters only, more complex):** gemini-pixel-sprite-gen — https://github.com/nakzyu/gemini-pixel-sprite-gen — generates chunky low-res pixel sprites with Google Gemini + a deterministic snap pipeline. Needs Python 3.10+ and Gemini browser-cookie auth. Use only if sprite-forge cannot do a new enemy/boss.

---

## 12. Connect Kiro to Godot — godot-ai MCP (added 2026-11-22)

**This is how Kiro stops editing files blindly and starts driving the live Godot editor.**

- **Repo: https://github.com/hi-godot/godot-ai — MIT, 3,641 stars**
- **What it does:** Connects MCP clients (including Kiro) to a live Godot editor. 46 tools and 120+ operations: build scenes, edit nodes and scripts, wire signals, configure UI, materials, animation, particles, cameras, environments.
- **Requirements — read this first:** Needs Godot 4.7+ and `uv` (Python server runner). ROSE's project was tested in Godot 4.6.2, so either upgrade Godot to 4.7+ first, or use an older godot-ai version / the alternative `godot-editor-mcp` (needs Godot 4.4 minimum). Do not claim the connection works until it is tested in Godot.
- **Install steps:**
  1. Install `uv` once: macOS/Linux `curl -LsSf https://astral.sh/uv/install.sh | sh` — Windows PowerShell `irm https://astral.sh/uv/install.ps1 | iex`
  2. In Godot: AssetLib tab → search **Godot AI** → Download → Install into `your-project/addons/godot_ai/`
  3. Enable it: Project → Project Settings → Plugins → **Godot AI**
  4. In the Godot AI dock, press **Configure** next to Kiro (or **Configure all**), then restart Kiro.
  5. Kiro must be opened with the same project folder (`Arjun-The-Rise-of-Kaalasur`) as its workspace, and Godot must be open with the same project.
  6. Test it in Kiro with: "Show me the current scene hierarchy." — if Kiro can see the live scene tree, the connection works.
- **How it works:** Kiro → `godot-ai attach` (stdio) → Python server (authenticated HTTP, port 8000) → Godot editor plugin (authenticated WebSocket, port 9500) → live Godot editor. Do NOT manually add `http://127.0.0.1:8000/mcp` as a plain URL in v4 — use the dock-generated command.
- **Safety:** Writes stay inside the project. `project.godot`, `override.cfg` and `.godot/` are off-limits to the plugin.

---

## 13. Professional Game-Dev Skills — Plan Like an Organisation (added 2026-11-22)

**Install in this order. Do NOT install all three at once — Kiro gets confused when too many skills are loaded.**

### 13A. Best pick for daily work — awesome-gamedev-agent-skills
- **Repo: https://github.com/gamedev-skills/awesome-gamedev-agent-skills — Apache-2.0, 10,066 stars**
- **What it is:** 79 game-dev skills + a router for 12 engines. Godot has 16 skills (Godot 4.7 checked): `godot-gdscript`, `godot-nodes-scenes`, `godot-signals-groups`, `godot-2d-movement`, `godot-tilemap`, `godot-physics`, `godot-ui-control`, `godot-animation`, `godot-shaders`, `godot-resources`, `godot-audio`, `godot-export`, and more. It also has discipline / genre / workflow skills (e.g. `create-game-assets`, `platformer`, `save-systems`).
- **How it works:** You do NOT pick skill names. The router detects the engine from `project.godot`, reads your plain-words request, and loads only the matching 2–3 skills. Example: "add a double jump to my Godot player" loads `godot-2d-movement` + `platformer`.
- **Install:** Needs Node.js 22.20 or later.
  ```
  npx skills add gamedev-skills/awesome-gamedev-agent-skills
  ```
  Add `-a kiro` to target Kiro, `-g` for every project. If Kiro already has many skills, install only router + Godot instead of all 79, so skill descriptions are not cut off.
- **Use for Arjun:** Daily Godot coding, movement, tilemaps, animation, UI, audio, export — one milestone at a time, with the locked canon in this file.

### 13B. Organisation / PM style — godot-game-pm-orchestrator (use second, only if ROSE wants multi-agent work)
- **Skill file: https://github.com/hannhu/game_develope_agent_skills/blob/HEAD/skills/godot-game-pm-orchestrator/SKILL.md**
- **What it does:** Acts as a PM / manager agent for a multi-agent project: turn an idea into a vertical slice, split work across stable agents, define ownership and interface contracts, maintain baseline status, gate reviews / tests / builds, prevent repo or asset-pipeline drift, hand off across machines.
- **Key rules from it:** Start with a vertical slice (one core loop, one playable scene, one UI path, one asset style, one headless test, one build target) — do NOT plan the whole commercial game first. Keep PM-owned docs short and committed: `agents/PROJECT_BRIEF.md`, `agents/INTERFACES.md`, `agents/BASELINE.md`, `agents/MILESTONES.md`, `agents/SESSIONS.md`, `agents/BACKLOG.md`, `agents/DONE.md`, `agents/agent-<id>.md`, plus `agents/tools/kickoff.py` to generate per-agent kickoff messages.
- **Use for Arjun:** Only when ROSE is running several Kiro / agent windows at once (e.g. one for combat, one for levels, one for art). For solo work with one Kiro, Section 13A is enough.

### 13C. Bigger studio model — game-dev skill (DreamLab-AI / agentbox) — optional, heaviest
- **Skill file: https://github.com/DreamLab-AI/agentbox/blob/HEAD/skills/game-dev/SKILL.md**
- **What it is:** A full game-development studio model: 48 specialised agents across 8 departments, 38 `/game-dev` workflow commands, sprint / gate / release workflows, for Godot, Unity and Unreal. Godot >= 4.6.
- **Use only if:** ROSE wants a studio-style workflow (concept → pre-production → production → polish → release, with team commands). Do NOT install this together with 13A and 13B — pick one organisation model.

**Recommended order for ROSE:** 13A first → test Milestone 1 with it → add Section 12 (godot-ai) → add Section 11 (sprite-forge) for Arjun animations → add 13B only if she starts using multiple agents.

---

## 14. How to Teach a Skill to Kiro

**A skill is NOT an app. It is a folder with a `SKILL.md` file inside it. Kiro reads the skill's `description` and loads it automatically when your request matches — or you call it with `/<skill-name>`.**

Kiro loads skills from:
- Project (this game only): `.kiro/skills/<skill-name>/SKILL.md`
- Global (every project): `~/.kiro/skills/<skill-name>/SKILL.md`

**Three ways to install — pick one:**

1. **Easiest — command line (for repos that support the skills CLI):**
   ```
   npx skills add <owner>/<repo> -a kiro
   # example: npx skills add gamedev-skills/awesome-gamedev-agent-skills -a kiro
   # add -g for global, leave it off for this project only
   ```
   Needs Node.js. The CLI detects Kiro and puts the folder in the right place.

2. **In Kiro IDE — Import a skill:**
   - Open Kiro panel → **Agent Steering & Skills** → **+** → **Import a skill** → **GitHub**
   - Paste the SKILL FOLDER URL, not the repo root. Example for the PM skill:
     `https://github.com/hannhu/game_develope_agent_skills/tree/main/skills/godot-game-pm-orchestrator`
   - Kiro imports one skill folder at a time. Restart Kiro if the skill does not show up.

3. **By hand — copy the folder (use this for sprite-forge, whose SKILL.md is at the repo root):**
   ```
   mkdir -p .kiro/skills/sprite-forge
   cp /path/to/sprite-forge/SKILL.md .kiro/skills/sprite-forge/SKILL.md
   # also copy its scripts/ folder if the skill needs it — read its SKILL.md first
   ```
   Then restart Kiro. Test it with `/sprite-forge` or by describing the task in plain words.

**For MCP (godot-ai, Section 12) — this is different from a skill:**
- MCP is a server connection, not a SKILL.md file. It lives in `.kiro/settings/mcp.json` (one workspace) or `~/.kiro/settings/mcp.json` (every workspace).
- Do NOT edit that file by hand for godot-ai — use the Godot AI dock **Configure** button for Kiro, as in Section 12. It writes the correct entry for you.

**Rules for Kiro skills in this project:**
- Install ONE skill at a time, test it with one small task, then install the next.
- Workspace skills (`.kiro/skills/`) beat global skills with the same name — use workspace skills for Arjun-specific work.
- If a skill does not load, check: folder name matches the `name` in SKILL.md, SKILL.md is at the folder root, Kiro was restarted.
- Never paste a skill's API key / token into chat. If a skill needs a key, Kiro will ask for it in its own secure setup.
