# game-maker-intro

An introductory browser game built with HTML5 Canvas that demonstrates the core concepts used in Game Maker / game development.

## ⭐ Catch the Stars

A fast-paced arcade game where you control a catcher at the bottom of the screen and must catch falling stars and gems while dodging bombs.

### Concepts demonstrated

| Game Maker concept | Implementation |
|---|---|
| **Game loop** | `requestAnimationFrame` drives every frame |
| **Objects** | Player (catcher) and falling items are independent objects with `update` + `draw` methods |
| **Rooms / Screens** | Start screen → Playing → Game Over |
| **Sprites** | Canvas 2D API draws all graphics |
| **Collision detection** | AABB (Axis-Aligned Bounding Box) between the player and falling items |
| **Score & Lives** | Tracked per-object interaction |
| **Level progression** | Speed and spawn rate increase every 200 points |

### How to play

1. Open `index.html` in any modern browser — no install required.
2. Press **Space** to start.
3. Move left/right with the **← →** arrow keys or **A / D**.
4. Catch ⭐ stars (+10 pts) and 💎 diamonds (+25 pts).
5. Avoid 💣 bombs — each one costs a life.
6. Missing a star also costs a life.
7. You have **3 lives**. Survive as long as possible!

### Running locally

```bash
# Any static file server works, e.g.:
npx serve .
# or simply open index.html directly in your browser
```
