#!/bin/bash
#Chmod Headsup
#ColorGrade
pkg i ncurses-utils x11-repo -y
red_f=$(tput setaf 1)
red_b=$(tput setab 1)
green_f=$(tput setaf 2)
green_b=$(tput setab 2)
yellow_f=$(tput setaf 3)
yellow_b=$(tput setab 3)
blue_f=$(tput setaf 4)
blue_b=$(tput setab 4)
magenta_f=$(tput setaf 5)
magenta_b=$(tput setab 5)
cyan_f=$(tput setaf 6)
cyan_b=$(tput setab 6)
white_f=$(tput setaf 7)
white_b=$(tput setab 7)

#TextForm
bold=$(tput bold)
uline=$(tput smul)
blink=$(tput blink)
reverse=$(tput rev)
standout=$(tput smso)

#Others
user=$(whoami)
host=$(uname -n)
opsys=$(uname -o)
machine=$(uname -m)
kernel_nme=$(uname -s)
kernel_rel=$(uname -r)
kernel_ver=$(uname -v)
upt=$(uptime -p)
cal=$(date)
house=$HOME


#Code
cat << "EOF"
 _____
|_   _|__ _ _ _ __ _  ___ __
  | |/ -_) '_| '  \ || \ \ /
  |_|\___|_| |_|_|_\_,_/_\_\
__  _____ ___ ___
\ \/ / __/ __| __|
 >  <| _| (__| _|
/_/\_\_| \___|___|
__      ___    _ _
\ \    / / |_ (_) |_ ___ ____  _ _ _
 \ \/\/ /| ' \| |  _/ -_|_-< || | '_|
  \_/\_/ |_||_|_|\__\___/__/\_,_|_|
 _   _
| |_| |_  ___ _ __  ___
|  _| ' \/ -_) '  \/ -_)
 \__|_||_\___|_|_|_\___|
EOF
function optwp () {
  bash wallpaper-you.sh
}
read -p "$bold$green_f>Install XFCE and themes? [y/n] >> $uline" yn
tput sgr 0
case $yn in
   [Yy]* )
   tput sgr0
          echo -e "$green_f\Installing Necessary Stuff"
          pkgs=(dbus* xorg* aterm librsvg proot proot-distro gnuplot xfce4 xfce4-goodies leafpad geany kvantum tsu audacious pulseaudio pavucontrol-qt tigervnc tigervnc-viewer otter-browser)
for package in "${pkgs[@]}"; do
pkg i $package && echo $package installed successfully
done
         echo -e "$yellow_f$bold\Data Assets setup$norm"
         rm -rf $HOME/.backup
         mkdir $HOME/.backup
         mv $HOME/.config $HOME/.backup
         mv $HOME/.vnc $HOME/.backup
         mkdir $HOME/.vnc
         mkdir $HOME/.config
         #Theme Extraction Begins
         tar -xf ws-dark.tar.xz -C $house/.themes
         tar -xf ws-light.tar.xz -C $house/.themes
         chmod u+x libvnc/*
         chmod u+x prm/*
         cp libvnc/startvnc $PREFIX/bin 
         cp prm/distrolaunch $PREFIX/bin
         cp libvnc/stopvnc $PREFIX/bin
         cp libvnc/xstartup $HOME/.vnc
         echo "May take a while"
         #Folders
         mkdir $HOME/.config
         mkdir $HOME/.config/geany/
         mkdir $HOME/.config/geany/colorschemes
         mkdir $HOME/Desktop
         mkdir $HOME/Downloads
         mkdir $HOME/Templates
         mkdir $HOME/Public
         mkdir $HOME/.icons
         mkdir $HOME/Pictures
         mkdir $HOME/Videos
         mkdir $HOME/storage/music
         tar -xf config/config.tar.gz -C $HOME/.config
         cp config/geany/black.conf $HOME/.config/geany/colorschemes
         cp config/Debian.desktop $HOME/Desktop
         if [ ! ~/storage ]; then
         termux-setup-storage
          fi
         proot-distro install debian
         
         ln -s $HOME/storage/music $HOME/Music
         echo "Done"
         bash icon.sh
         bash wallpaper-you.sh
    ;;
    [Nn]* )
    echo "Aborted >> 1"
    exit 1
    ;;
esac
#wp
# usr/share/xfce4/backdrops
# usr/share/backgrounds/xfce
