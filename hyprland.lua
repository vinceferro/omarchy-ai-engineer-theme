local active_border_color = { colors = { "rgba(00e5ffee)", "rgba(ff2bd6dd)" }, angle = 45 }
local inactive_border_color = "rgba(151b2eaa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
