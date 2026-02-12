# PATH setup
$env.PATH = (
    $env.PATH
    | split row (char esep)
    | append 'C:\Users\vinay\AppData\Local\Microsoft\WinGet\Links'
    | append 'C:\Users\vinay\AppData\Local\Microsoft\WinGet\Packages\lsd-rs.lsd_Microsoft.Winget.Source_8wekyb3d8bbwe\lsd-v1.2.0-x86_64-pc-windows-msvc'
    | append 'C:\Users\vinay\AppData\Local\Microsoft\WinGet\Packages\sharkdp.bat_Microsoft.Winget.Source_8wekyb3d8bbwe\bat-v0.26.1-x86_64-pc-windows-msvc'
    | uniq
)

# Editor setup
$env.EDITOR = "nvim"
$env.VISUAL = "nvim"
$env.FZF_DEFAULT_COMMAND = "rg --files --hidden"

# Generate scripts for Zoxide and Starship
zoxide init nushell | save -f ~/.zoxide.nu
starship init nu | save -f ~/.starship.nu
