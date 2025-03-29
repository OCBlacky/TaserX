# TaserX - FiveM Taser Overhaul ⚡

TaserX is a standalone FiveM script that enhances taser mechanics by adding a cooldown, limited battery life, and stun effects.


## Features 🚀
✅ Taser cooldown system to prevent spam.
✅ Limited BAttery (customizable in config).
✅ On-screen battery display.
✅ Optional server-side logging.


## Installation 📩
1. Download or clone this repository.
2. Place the `taserX` folder inside your FiveM `resources` directory.
3. Add `ensure TaserX` to your `server.cfg`.
4. Restart your FiveM server.


## Configuration ⚙️
Edit **config.lua** to adjust settings:


```lua
Config.TaserCooldown = 10  -- Cooldown time in seconds
Config.StunDuration = 5  -- How long the suspect stays stunned
Config.BatteryLimit = 5  -- Number of taser shots before battery dies
Config.EnableLogging = true  -- Logs taser usage to the server
