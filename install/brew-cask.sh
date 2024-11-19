brew tap homebrew/cask-fonts

# Install cask packages

apps=(
  aldente
  alfred
  appcleaner
  discord
  docker
  google-chrome
  handbrake
  karabiner-elements
  maccy
  miniconda
  obsidian
  obs
  postman
  qbittorrent
  rectangle
  the-unarchiver
  tor-browser
  transnomino
  visual-studio-code
  wezterm
  zoom
)

brew install "${apps[@]}" --cask
