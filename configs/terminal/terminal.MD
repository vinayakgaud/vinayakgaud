1. Terminal - Wezterm (both windows and macOS support)
2. Shell - NuShell 
3. Editor - NeoVim
4. Multiplexer - Tmux
5. Fzf - Fuzzy Finder
6. Ripgrep - Fast Search Tool
7. Bat - Cat clone with syntax highlighting
8. Starship - Cross-shell prompt
12. Tmux Plugin Manager (TPM) - Plugin manager for Tmux
13. Zoxide - A smarter cd command
14. Exa - Modern replacement for ls
15. Htop - Interactive process viewer
16. Lsd - A modern ls command with icons and colors
17. Lsp - Language Server Protocol support for Emacs
18. Font - Monosapce Neon (github) or Fira Code nerd font or MesloLGS
19. Telescope

## //setting nushell as default open up ~/.wezterm.lua and add the following line

local wezterm = require("wezterm")

return {
  default_prog = { "nu" },
}


## //nushell config files
~/.config/nushell/

mkdir ~/.config/nushell | touch ~/.config/nushell/config.nu | touch ~/.config/nushell/env.nu | touch ~/.config/nushell/aliases.nu


Linux/macOS → ~/.config/nushell

Windows → AppData\Roaming\nushell

had to manually put aliases into the folder

source ~/.config/nushell/config.nu


windows path for nushell config file - C:\Users\vinay\AppData\Roaming\nushell

## setting up tmux (wezterm keybings) ctrl + a as prefix key

## Neovim
1. Install Neovim cleanly

2. Install LazyVim starter - git clone https://github.com/LazyVim/starter ($env.LOCALAPPDATA | path join "nvim")

//navigation
return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
    },
  },
}



3. Wire Neovim to:

  Nushell

  WezTerm panes

4. Set one theme (Catppuccin or Tokyo Night)

5. Keep plugins lean

6. Avoid keybinding conflicts with WezTerm

