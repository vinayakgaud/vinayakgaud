# config.nu
#
# Installed by:
# version = "0.109.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings,
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
# Load Starship Prompt
source ~/.starship.nu

# Load Zoxide
source ~/.zoxide.nu

# --- Aliases ---
alias v = nvim
alias cat = bat --paging=never
alias grep = rg

# Fix these by ensuring 'lsd' and 'btm' are installed via winget
alias ls = lsd
alias ll = lsd -l
alias la = lsd -a
alias top = htop

alias g = git
alias gst = git status
alias ga = git add
alias gc = git commit
alias gp = git push
alias gl = git log --oneline --graph --decorate
alias gf = git fetch
alias gpl = git pull

def fzf-history [] {
  history
  | get command
  | uniq
  | reverse
  | str join "\n"
  | fzf
}
alias fh = fzf-history

def fzf-files [] {
  rg --files | fzf
}
alias ff = fzf-files

alias .. = cd ..
alias ... = cd ../..

# FZF Integration (Custom keybindings for Nushell)
# Note: You need fzf.exe in your Windows PATH
$env.FZF_DEFAULT_OPTS = "--height 40% --layout=reverse --border"
