#!/bin/bash
rm -rf $HOME/.icons/*
cat << "EOF"
Choose your Iconpacks (Credits to the Pling-XFCE community)
Select Icon Packs
1) We10X
2) MacOS BigSur
3) Deepin
4) WhiteSur
5) Win10Sur
6) Win11 Icon
7) All
8) Cancel
EOF
function arrow () {
  echo "Do you want to include a Cursor to your pack? [Y/N]"
  read yn
  case $yn in
      [Yy]* ) 
            tar -xf iconpacks/01-Vimix-cursors.tar.xz -C $PREFIX/share/icons 
            tar -xf iconpacks/02-Vimix-white-cursors.tar.xz -C $PREFIX/share/icons 
            echo "Done"
            bash wallpaper-you.sh
            ;;
      [Nn]* )
            echo "Cancelling"
            bash wallpaper-you.sh
            ;;
      * ) 
         arrow
         ;;
  esac
}
read -p "Give me your answer[1-8] >> " ico
case $ico in
    1)
      tar -xf iconpacks/We10X-black.tar.xz -C $PREFIX/share/icons
      tar -xf iconpacks/We10X.tar.xz -C $PREFIX/share/icons
      arrow
      ;;
    2)
      tar -xf iconpacks/Mkos-Big-Sur.tar.xz -C $PREFIX/share/icons
      arrow
      ;;
    3)
      tar -xf iconpacks/deepin2022-Dark.tar.xz -C $PREFIX/share/icons
      tar -xf iconpacks/deepin2022.tar.xz -C $PREFIX/share/icons 
      arrow
      ;;
     4)
        tar -xf iconpacks/01-WhiteSur.tar.xz -C $PREFIX/share/icons
      arrow
      ;;
      5)
        tar -xf iconpacks/Win10Sur-black.tar.xz -C $PREFIX/share/icons 
        tar -xf iconpacks/Win10Sur.tar.xz -C $PREFIX/share/icons
        arrow
        ;;
      6)
        tar -xf iconpacks/Win11-black.tar.xz -C $PREFIX/share/icons 
       tar -xf iconpacks/Win11.tar.xz -C $PREFIX/share/icons 
       arrow
       ;;
       7)
       rm -rf $HONE/.icons 
       mkdir $HOME/.icons
       tar -xf iconpacks/We10X-black.tar.xz -C $PREFIX/share/icons
       tar -xf iconpacks/We10X.tar.xz -C $PREFIX/share/icons
       tar -xf iconpacks/Mkos-Big-Sur.tar.xz -C $PREFIX/share/icons
       tar -xf iconpacks/deepin2022-Dark.tar.xz -C $PREFIX/share/icons
      tar -xf iconpacks/deepin2022.tar.xz -C $PREFIX/share/icons
      tar -xf iconpacks/01-WhiteSur.tar.xz -C $PREFIX/share/icons
      tar -xf iconpacks/Win10Sur-black.tar.xz -C $PREFIX/share/icons 
        tar -xf iconpacks/Win10Sur.tar.xz -C $PREFIX/share/icons
        tar -xf iconpacks/Win11-black.tar.xz -C $PREFIX/share/icons 
       tar -xf iconpacks/Win11.tar.xz -C $PREFIX/share/icons
       arrow
       ;;
     *)
       bash icon.sh
       ;;
  esac
