#!/bin/sh

echo "This may take a while!!!"
echo "Are you sure you want to do this? (y/n)"
read gonogo

echo "Do you want to install SSH? (y/n)"
read getssh

echo "Do you want to install git? (y/n)"
read getgit


if [ $gonogo = "y" ] || [ $gonogo = "Y" ]
  then
    apt update
    apt upgrade -y
    if [ $getssh = "y" ] || [ $getssh = "Y" ]
      then
        apt install openssh-server
        systemctl enable ssh
        ufw allow ssh
    fi
    if [ $getgit = "y" ] || [ $getgit = "Y" ]
      then
        apt install git -y
    fi
    apt clean
    echo " "
    echo "You should reboot your system now."
    echo "Do you want to reboot now? (y/n)"
    read doreboot
    if [ $doreboot = "y" ] || [ $doreboot = "Y" ]
      then
        reboot
    fi
fi
