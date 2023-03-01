
# ZyreeAwesome 💖

![](https://i.imgur.com/qLW4KZV.png)

## Linux configuration for my workflow 🌸
- **Distro:** [Debian 11 (Bullseye)](https://wiki.debian.org/DebianBullseye)
- **Wallpapers:** [Click here](https://github.com/spirizeon/backdrop)
- **Window manager:** [AwesomeWM](https://awesomewm.org/)
- **Sound control:** [pulsemixer](https://github.com/GeorgeFilipkin/pulsemixer)
- **Editors:** [neovide](https://github.com/neovide/neovide)
- **Terminals:** [X-term](https://invisible-island.net/xterm/), [Kitty](https://github.com/kovidgoyal/kitty)
- **Bar:** Wibar (default)
- **Compositor:** NOT SET
- **Notifications:** NOT SET
- **Shells:** Bash
- **Prompt:** Starship 

### Duplicate config.🌑
Copy paste this script into your terminal to copy down my configuration (Do note that this may only work for Debian) 
```bash
# Note that if the script doesn't work, click 
# on the documentation links and install the 
# remaining applications yourself 

sudo apt update
sudo apt upgrade
sudo apt install build-essential
# apt installs 
sudo apt install awesome pulsemixer nitrogen git snapd neofetch
git clone https://github.com/spirizeon/backdrop 

#Installing neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage 
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

#Installing neovide 
sudo snap install neovide

# Kitty install
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop

#Shell-prompts (starship)
curl -sS https://starship.rs/install.sh | sh

# DT Color scripts
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
sudo make install


```

![](https://i.imgur.com/eMx0s2z.png)
# Thanks!
Please ⭐ this repository if you liked it. it'd mean a lot to me.
