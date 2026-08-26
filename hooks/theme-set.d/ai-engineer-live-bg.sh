#!/bin/bash
# When the Ai Engineer theme is applied, always land on the animated
# "universe" background so the thev.background shader renders it.
THEME=$1
LIVE="$HOME/.local/state/omarchy/current/theme/backgrounds/1-universe-live.webp"

if [[ $THEME == "ai-engineer" && -f $LIVE ]]; then
  omarchy-theme-bg-set "$LIVE"
fi
