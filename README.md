# Arjun: The Rise of Kaalasur

2D pixel-art action-adventure game, Godot 4, PC pehle.
Hero Arjun hai. Uska bada bhai Devansh ko Nishachar Dal le jaati hai.
Mentor Rishivar hai. Nishachar Dal ka leader Kalanemi hai.
Final villain Kaalasur, Demon King hai.

## Milestone 0 — kya hai ye?

Ye sirf project ki neev hai. Game abhi bana nahi hai.
Isme sirf ek scene hai jo khulta hai aur chalti hai.

## Godot mein kaise kholo — Step by Step

**Step 1:** Godot 4 download karo
- godotengine.org par jao
- Godot 4.3 (ya usse naya 4.x) download karo

**Step 2:** Project kholo
- Godot kholo, Project Manager dikhega
- Upar **Import** button dabao
- Ye folder choose karo: `Arjun-The-Rise-of-Kaalasur`
- Usme `project.godot` file select karo, phir **Import & Edit** dabao

**Step 3:** Play dabao
- Upar right side me **Play** button hai (triangle wala)
- Game chal jayega. Tumhe dikhna chahiye:
  - Title: "Arjun: The Rise of Kaalasur"
  - Neela 64x64 box: Arjun (placeholder, final art nahi hai)
  - Neeche bhura ground

## Milestone 0 kya prove karta hai?

- Project Godot 4 mein khulta hai
- Main scene bina error ke chalti hai
- 64x64 scale dikh raha hai (Arjun box 64 pixel chauda, 64 pixel uncha hai)
- Pixel-art setting on hai (nearest filter, taaki pixels blur na hon)

## Isme kya NAHI hai?

- Chalna, jump, attack — kuch nahi hai
- Enemy, boss — koi nahi hai
- Magic, fragment, Divine Sword — abhi nahi hai
- Biome, map, story scene — abhi nahi hai

Ye sab aane wale milestones mein banega, ek-ek karke.

## Files kahan hain?

- `project.godot` — project settings, main scene, 1152x648 size
- `scenes/levels/main.tscn` + `main.gd` — Milestone 0 ki ekmatra scene
- `assets/` — art, sound, effects ke liye khaali folders (baad mein bharenge)
- `scenes/` — player, enemies, bosses, levels, ui, effects ke liye folders
- `scripts/` — code ke liye folders
- `resources/` — characters, items, combat ke liye folders
- `AGENTS.md` — AI ke liye kaam karne ke rules
- `CHANGELOG.md` — kya-kya badla, iska record
- `HANDOFF.md` — is milestone ki report

## Agla step

Milestone 1 — Arjun ka movement prototype (chalna + jump + chhota test level).
Pehle Milestone 0 ko Godot mein Import karke Play karke check karo.
