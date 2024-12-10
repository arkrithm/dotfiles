set -eu

sudo apt-get update
sudo apt-get install -y zsh tmux curl wget pkg-config build-essential

chsh -s $(which zsh)

# Install Rust
if ! command -v rustc &>/dev/null; then
    echo "Installing Rust via rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    # パス更新
    zsh "$HOME/.cargo/env"
else
    echo "Rust is already installed."
fi

# Install Starship
if ! command -v starship &>/dev/null; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
else
    echo "starship is already installed."
fi

# Install sheldon
if ! command -v sheldon &>/dev/null; then
    echo "Installing sheldon..."
    cargo install sheldon
else
    echo "sheldon is already installed."
fi
