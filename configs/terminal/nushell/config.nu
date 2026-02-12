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
alias top = ntop

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
