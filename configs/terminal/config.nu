
# Load aliases
source alias.nu

# Prompt (clean, readable)
$env.PROMPT_COMMAND = { ||
  let pwd = (pwd | path basename)

  # Shell boot health
  let shell_ok = (
    if ($env.NU_ENV_LOADED? and $env.NU_ALIASES_LOADED? and $env.NU_CONFIG_LOADED?) {
      (ansi green) + "✓"
    } else {
      (ansi red) + "✗"
    }
  )

  # Last command status
  let cmd_ok = (
    if ($env.LAST_EXIT_CODE == 0) {
      (ansi green) + "✓"
    } else {
      (ansi red) + "✗"
    }
  )

  let name = (ansi white) + "kuro"

  $shell_ok + " " + $cmd_ok + " " + (ansi blue) + $name + " " + (ansi cyan) + "-❯ " + (ansi reset)
}


$env.PROMPT_COMMAND_RIGHT = ""

# Better UX
$env.config = {
  show_banner: false
  edit_mode: vi
  cursor_shape: {
    vi_insert: line
    vi_normal: block
  }
}

$env.NU_CONFIG_LOADED = true
print $"(ansi yellow)[config.nu loaded](ansi reset)"
