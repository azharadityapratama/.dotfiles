# Install Homebrew

/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

apps=(
  asciiquarium
  bat
  cmatrix
  fd
  fzf
  fcc
  git
  go
  gradle
  htop
  jdtls
  neofetch
  neovim
  openjdk
  ripgrep
  rustup-init
  starship
  stow
  tmux
)

brew install "${apps[@]}"
