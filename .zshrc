export XDG_CONFIG_HOME="$HOME/.config"

# rust
. "$HOME/.cargo/env"

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=${XDG_CONFIG_HOME}/starship/starship.toml

# sheldon
eval "$(sheldon source)"