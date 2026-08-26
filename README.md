# AI Engineer — an Omarchy theme

A glowing neon "AI engineer universe" theme for [Omarchy](https://omarchy.org):
deep-space backgrounds, electric cyan accent, purple/pink neon terminals.

![preview](preview.png)

## What's inside

- **Neon palette** — deep-space backgrounds (`#0a0e1a`), cyan accent (`#00e5ff`),
  pink/purple brights tuned for terminals and the status bar
- **Backgrounds** — `2-nebula`, `3-neural` (a glowing AI network), `4-eclipse`
  (a neon-rimmed dark planet), plus `1-universe-live.webp`, the trigger for the
  [animated shader wallpaper](https://github.com/vinceferro/omarchy-universe-background)
  if you have that plugin installed (otherwise it's a pretty static frame)
- **Lock screen** — dark starfield with neon borders
- **Icons** — Yaru-purple-dark

## Install

```bash
omarchy theme install https://github.com/vinceferro/omarchy-ai-engineer-theme.git
omarchy theme set ai-engineer
```

> Note: Omarchy regenerates a theme's `hyprland.lua` on install, so the
> cyan→magenta gradient active-window border from this repo is replaced by a
> solid accent border. To get the gradient back, copy `hyprland.lua` from this
> repo to `~/.config/omarchy/themes/ai-engineer/` and re-apply the theme.

For the full animated-universe experience, also install the shader plugin:

```bash
omarchy plugin add https://github.com/vinceferro/omarchy-universe-background.git --enable
omarchy restart shell
```

Then double-click the wallpaper and pick `1-universe-live.webp`.

## License

MIT
