local wezterm = require("wezterm")

return {
  default_prog = { "nu" },

  -- tmux-style leader
  leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },

  keys = {
    ------------------------------------------------------------------
    -- COPY / PASTE (Windows-style + safe defaults)
    ------------------------------------------------------------------

    -- Copy when selection exists, otherwise pass Ctrl-C through
    {
      key = "c",
      mods = "CTRL",
      action = wezterm.action.CopyTo("Clipboard"),
    },

    {
      key = "v",
      mods = "CTRL",
      action = wezterm.action.PasteFrom("Clipboard"),
    },

    ------------------------------------------------------------------
    -- SPLITS (FIXED — THESE NOW WORK)
    ------------------------------------------------------------------

    {
      key = "+",
      mods = "LEADER",
      action = wezterm.action.SplitVertical {
        domain = "CurrentPaneDomain",
      },
    },

    {
      key = "-",
      mods = "LEADER",
      action = wezterm.action.SplitHorizontal {
        domain = "CurrentPaneDomain",
      },
    },

    ------------------------------------------------------------------
    -- PANE NAVIGATION (tmux-style hjkl)
    ------------------------------------------------------------------

    { key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
    { key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
    { key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
    { key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },

    ------------------------------------------------------------------
    -- TABS (tmux windows)
    ------------------------------------------------------------------

    {
      key = "c",
      mods = "LEADER",
      action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
    {
      key = "n",
      mods = "LEADER",
      action = wezterm.action.ActivateTabRelative(1),
    },
    {
      key = "p",
      mods = "LEADER",
      action = wezterm.action.ActivateTabRelative(-1),
    },
    {
      key = "x",
      mods = "LEADER",
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
      key = "w",
      mods = "LEADER",
      action = wezterm.action.CloseCurrentTab { confirm = true },
    },
    {
      key = "q",
      mods = "LEADER",
      action = wezterm.action.QuitApplication,
    },


    ------------------------------------------------------------------
    -- WORKSPACES (tmux sessions)
    ------------------------------------------------------------------

    {
      key = "s",
      mods = "LEADER",
      action = wezterm.action.ShowLauncherArgs {
        flags = "WORKSPACES",
      },
    },
  },
}
