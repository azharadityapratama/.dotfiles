brew tap homebrew/cask-fonts

# Install cask packages

apps=(
  aldente
  alfred
  appcleaner
  discord
  docker
  gimp
  google-chrome
  handbrake
  iina
  maccy
  mendeley
  miniconda
  obsidian
  obs
  openvpn-connect
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
