---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Projects
layout: page
---

### NEStris Leaderboard Tools
[Github](https://github.com/fractal161/nestris-leaderboard-tools)

A big collection of scripts used to parse the entire history of a Google spreadsheet used for community leaderboards. Includes scraping utilities and a browser-based GUI written in Svelte to explore changes over time.

### Arbitrary Code Execution
To be added!

Collaborative effort in which an arbitrary code execution strategy for NES Tetris was identified and then tested. I was responsible for crafting the initial payload, which had to fit in a handful of bytes using a limited set of instructions.

### acervus
[Github](https://github.com/fractal161/acervus)

Uses value iteration to solve Tetris stacking for a specific set of possible boards. While impractical on its own, this was a critical component of early versions of [StackRabbit](https://github.com/GregoryCannon/StackRabbit/), a state of the art Tetris AI.

### NES Projects

Features romhacks and more. Naturally, most of it is Tetris, but there are a few exceptions.

#### RollTool
[Download](https://github.com/fractal161/rollTool/releases/)

A training ROM for the best NES Tetris players. Uses subframe polling to display button presses to an accuracy of 1.042 milliseconds, along with a large variety of statistics. Built using the [NESFab](https://pubby.games/nesfab/) programming language.

#### Speedhack
[Github](https://github.com/fractal161/speedhack/tree/mmc3)

Romhack that decouples the input polling rate from the game's framerate using a scanline counter for timing, which allows for faster inputs/speeds. As far as I know, there is no other NES game that uses this technique to this extent. Most practically, this is used to simulate PAL Tetris on NTSC consoles, making the gamemode much more accessible.

#### Bad Apple
[Github](https://github.com/fractal161/bad_apple_nes)

A challenge for myself to see if I could completely reverse engineer a completely new ROM. The target was [this ROM](https://www.romhacking.net/homebrew/112/), which plays [this popular animation](https://www.youtube.com/watch?v=FtutLA63Cp8) at an impressive quality for the console. The challenge was successful; the disassembly is essentially complete apart from a few audio engine components. In particular, I identified the logic used to compress the video, and verified my understanding was correct by recreating it in Python.

#### Piece percentages
[Download](/assets/hacks/TetrisPPCT.ips)

My first romhack, replacing the piece counts shown onscreen with relative frequencies. Done in around 4 days while on a boat.

#### SRS
[Download](/assets/hacks/srs.ips)

Romhack that implements the complex rotation system found in more modern tetris games.

#### Speedrun Timer
[Download](/assets/hacks/speedrun.bps)

Romhack that adds a timer during gameplay for the 100 line speedrun.
