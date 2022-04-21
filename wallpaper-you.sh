#!/bin/bash
clear
echo "Initialize Wallpaper Installation"
cat << "EOF"
INSTALLING CUSTOM WALLPAPERS.....
DO YOU WANT
TO EXTRACT THE FILES AND SEND TO .../share/backgrounds?
DOING SO WILL REMOVE THE DEFAULT XFCE WALLPAPER
ON YOUR BEHALF
EOF
read -p "[Y/n] Answer: "  yn
case $yn in
    [Yy]* )
        echo "Understood"
        rm -rf $PREFIX/share/backgrounds/xfce/*
        cp -r wp/TitanTaktOP/*  $PREFIX/share/backgrounds/xfce
        cp -r wp/AiHayasaka/* $PREFIX/share/backgrounds/xfce
        cp -r wp/KomiSan/* $PREFIX/share/backgrounds/xfce
        cp -r wp/MarinKitagawara/*    $PREFIX/share/backgrounds/xfce
        cp -r wp/MacOS/* $PREFIX/share/backgrounds/xfce
        cp -r wp/MaterialYou/*   $PREFIX/share/backgrounds/xfce
        cp -r wp/RemReZero/*     $PREFIX/share/backgrounds/xfce
        cp -r wp/spyxfamily/*    $PREFIX/share/backgrounds/xfce
      if (  find $PREFIX/share/backgrounds/xfce/ai_hayasaka_xfce.jpg )
      then
      clear
Blaze YT
      sleep 3
      startvnc
      else
      echo "Error Finding Extracted Data"
      fi
    ;;
    [Nn]* ) 
        echo "Exiting, setup Process Done"
    exit 0
    ;;
 esac
