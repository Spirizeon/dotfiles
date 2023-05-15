if status is-interactive
    echo " " 
    set -U fish_greeting
    starship init fish | source
    alias :wq="clear" 
    alias :q="killall kitty"
    alias r="rofi -show run" 
    alias ll="exa -a -l" 
    alias z="cd" 
    alias bcupnv="cp ~/.config/nvim/init.lua backupinit.lua"
    alias nv="nvim" # neovim
    alias dc="./Downloads/Discord/Discord" #discord
    alias jpl="./Downloads/Joplin-2.9.17.AppImage" #notes
    alias sst="flameshot" #screenshot
    alias nvx="nvim ~/.config/nvim/init.lua" 
    alias kt="kitty" 
    alias xtrm="x-terminal-emulator" 
    alias awx="nvim ~/.config/awesome/rc.lua" 
    alias cnfx="cd ~/.config" 
    alias kttx="nvim ~/.config/kitty/kitty.conf"
    alias bsrx="nvim ~/.bashrc"
    alias fsrx="nvim ~/.config/fish/config.fish" 
    alias hpl="./hplr.sh | lolcat " 
    # Aesthetics
    pfetch | lolcat
    colorscript -r
    figlet Dvst-2 | lolcat 
    echo "type 'hpl' for a cheatsheet" 
    # Commands to run in interactive sessions can go here
end
