export XDG_CONFIG_HOME="$HOME/.config"

# rust
. "$HOME/.cargo/env"

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=${XDG_CONFIG_HOME}/starship/starship.toml

# sheldon
eval "$(sheldon source)"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# alias
alias cat="bat"
alias ls='exa --icons'
alias ll='exa --icons -la'
alias lt='exa -Ta --icons -I "node_modules|.git|.cache|vendor|tmp"'

alias cdc="cd /mnt/c"
alias cdd="cd /mnt/d"
alias cde="cd /mnt/e"

