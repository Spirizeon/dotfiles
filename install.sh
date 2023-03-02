# Note that if the script doesn't work, click 
# on the documentation links and install the 
# remaining applications yourself 

sudo apt update
sudo apt upgrade
sudo apt install build-essential
# apt installs 
sudo apt install python3 pip awesome pulsemixer nitrogen git snapd neofetch libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl-dev libegl-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson
git clone https://github.com/spirizeon/backdrop 
cd $HOME
#Installing neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage 
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
cd $HOME
# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
cd $HOME
#Installing neovide 
sudo snap install neovide
cd $HOME
# Kitty install
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
cd $HOME
#Shell-prompts (starship)
curl -sS https://starship.rs/install.sh | sh
cd $HOME
# DT Color scripts
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
sudo make install
cd $HOME
#picom
git clone https://github.com/yshui/picom
pip install meson
git clone https://github.com/ninja-build/ninja
cd ninja
./configure.py --bootstrap
cd $HOME
#Replacing config files
mkdir ~/.config/nvim
cp ~/ZyreeAwesome/init.lua ~/.config/nvim/
cp ~/ZyreeAwesome/rc.lua ~/.config/awesome/
cd $HOME
sudo snap install lolcat
cd $HOME
echo "ALL DONE!"
