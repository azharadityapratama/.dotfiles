# Install Homebrew

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
  bat
  fd
  fzf
  gcc
  git
  go
  gradle
  jdtls
  lazygit
  neofetch
  neovim
  openjdk
  postgresql@16
  ripgrep
  rustup
  starship
  stow
  thefuck
  tmux
  tree
  wget
  zsh-autosuggestions
  zsh-syntax-highlighting
)

brew install "${apps[@]}"
