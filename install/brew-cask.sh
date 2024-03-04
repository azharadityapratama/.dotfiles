brew tap homebrew/cask-fonts

# Install cask packages

apps=(
  alacritty
  aldente
  alfred
  appcleaner
  discord
  docker
  font-hack-nerd-font
  gimp
  handbrake
  iina
  maccy
  mendeley
  miniconda
  notion
  obs
  openvpn-connect
  postman
  qbittorrent
  quarto
  rectangle
  retroarch-metal
  slack
  spotify
  steam
  tor-browser
  transnomino
  visual-studio-code
  zoom
)

brew install "${apps[@]}" --cask
