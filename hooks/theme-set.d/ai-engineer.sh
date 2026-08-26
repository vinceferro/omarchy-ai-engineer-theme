#!/bin/bash
# Restore ai-engineer customizations after every theme apply.
#
# Themes installed from git are "cloned themes": Omarchy drops their *.lua
# when staging (Lua runs code), regenerating hyprland.lua from colors.toml.
# That regenerated file loses this theme's two-color 45-degree gradient
# borders, so copy the original back from the cloned theme directory.
#
# Also re-pin the live (shader-rendered) background, because applying a
# theme cycles to the next background by default (see
# basecamp/omarchy#8431) and only *-live.webp backgrounds animate.
THEME_DIR="$HOME/.config/omarchy/themes/ai-engineer"
STAGED="$HOME/.local/state/omarchy/current/theme"

if [[ $1 != "ai-engineer" ]]; then
  exit 0
fi

# Gradient borders from the cloned theme repo
if [[ -f $THEME_DIR/hyprland.lua ]]; then
  cp "$THEME_DIR/hyprland.lua" "$STAGED/hyprland.lua"
fi

# Keep the animated universe background selected
LIVE="$THEME_DIR/backgrounds/1-universe-live.webp"
if [[ -f $LIVE ]]; then
  omarchy-theme-bg-set "$LIVE"
fi
