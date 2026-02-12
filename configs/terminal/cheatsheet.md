# 🚀 Vin's Neovim & Nushell Cheatsheet

This cheatsheet covers your modern terminal setup: **Nushell**, **Starship**, and **Neovim** (LSP-enabled).

---

## 🐚 Nushell & Terminal Shortcuts
These aliases were defined in your `config.nu`.

| Command | Action | Description |
| :--- | :--- | :--- |
| `v` | **Open Neovim** | Your primary editor (`nvim`) |
| `ls` | **List Files** | Uses `lsd` for icons and colors |
| `ll` / `la` | **Detailed List** | Long format / Show hidden files |
| `cat` | **Preview File** | Uses `bat` for syntax highlighting |
| `top` | **System Monitor** | Opens `btm` (Bottom) dashboard |
| `ff` | **Find Files** | Fuzzy search files using `fzf` + `rg` |
| `fh` | **Find History** | Search through your command history |
| `z {path}` | **Zoxide Jump** | Smart "cd" that learns your habits |

---

## ⌨️ Neovim: The Essentials
Vim is "modal." Press `Esc` to ensure you are in **Normal Mode** before using these.

### 1. Navigation (Normal Mode)
- **`h` `j` `k` `l`**: Left, Down, Up, Right (The core movement)
- **`w` / `b`**: Jump to next/previous **w**ord
- **`0` / `$`**: Jump to start / end of line
- **`gg` / `G`**: Go to top / bottom of file
- **`u` / `<Ctrl-r>`**: Undo / Redo

### 2. Custom Keybinds (Your Config)
| Keybind | Action | Mnemonic |
| :--- | :--- | :--- |
| `Space + e` | **Toggle Explorer** | **e**xplorer (NvimTree) |
| `Space + ff` | **Find Files** | **f**ind **f**iles (Telescope) |
|
