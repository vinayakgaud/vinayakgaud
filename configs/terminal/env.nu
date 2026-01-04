# Editor
$env.EDITOR = "nvim"
$env.VISUAL = "nvim"

# Language
$env.LANG = "en_US.UTF-8"

# PATH (portable pattern)
let home_bin = ($env.HOME | path join "bin")
if ($home_bin not-in $env.PATH) {
  $env.PATH = ($env.PATH | prepend $home_bin)
}
