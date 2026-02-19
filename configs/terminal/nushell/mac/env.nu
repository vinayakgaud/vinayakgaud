# env.nu
#
# Installed by:
# version = "0.109.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options

# Clean macOS PATH setup
$env.PATH = [
    "/opt/homebrew/bin"
    "/opt/homebrew/sbin"
    "/usr/local/bin"
    "/usr/bin"
    "/bin"
    "/usr/sbin"
    "/sbin"
]

# Editor setup
$env.EDITOR = "nvim"
$env.VISUAL = "nvim"
$env.FZF_DEFAULT_COMMAND = "rg --files --hidden"

# Generate scripts for Zoxide and Starship (macOS paths)
zoxide init nushell | save -f ~/.zoxide.nu
starship init nu | save -f ~/.starship.nu
