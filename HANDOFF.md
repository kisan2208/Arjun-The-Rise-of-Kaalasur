# HANDOFF — Milestone 0: Project Foundation

## Inspected
- GDD: `workspace/user/files/Arjun_The_Rise_of_Kaalasur_Game_Design_Document.md` (Section 10 folder structure, Section 12 Milestone 0)
- Locked canon: Godot 4, 2D pixel art, 64x64, viewport 1152x648, Arjun / Devansh / Rishivar / Kalanemi / Maya / Bhaisaur / Kaalasur, Nishachar Dal, biome order Ice / Wind / Earth / Fire, Ending A first
- Purana starter prototype `~/workspace/godot-metroidvania/` ko chheda nahi — Milestone 0 ek naya clean project hai
- GDD file ko edit nahi kiya

## Plan
- Naya project `~/workspace/Arjun-The-Rise-of-Kaalasur/` banao
- Sirf Milestone 0 scope: project.godot, ek minimal main scene, folder structure, README / CHANGELOG / HANDOFF / AGENTS (MD mein)
- Koi gameplay, enemy, boss, magic ya art nahi banana

## Changed
- `project.godot` — naya
- `scenes/levels/main.tscn` + `scenes/levels/main.gd` — naya
- `README.md`, `CHANGELOG.md`, `HANDOFF.md`, `AGENTS.md` — naye
- Folder structure: `assets/` (8 subfolders), `scenes/` (6 subfolders), `scripts/` (5 subfolders), `resources/` (3 subfolders), khaali folders mein `.gitkeep`

## Tested
- `ls -R` se saari files check ki — poori file list neeche hai
- `main.tscn` ka ExtResource path check kiya: `res://scenes/levels/main.gd` file maujood hai
- `main.gd` mein tabs use hue hain, spaces nahi
- `project.godot` mein main scene path aur viewport size check kiye

## Not tested
- Godot editor mein Import + Play test NAHI hua — is VM mein Godot binary nahi hai
- ROSE ko apne laptop par Godot 4 mein Import karke Play dabakar check karna hai
- Agar error aaye to screenshot / error message bhejdo, tab fix karenge

## Next step
- Milestone 0 ko Godot mein manually test karo (Import + Play)
- Uske baad Milestone 1: Arjun ka movement prototype — sirf ROSE ki approval ke baad shuru karna
