#!/bin/sh

echo "This may take a while!!!"
echo "Are you sure you want to do this? (y/n)"
read answer

if [ $answer = "y" ] || [ $answer = "Y" ]
  then
    apt-get update
    apt-get upgrade -y
    apt-get install git -y
    apt-get clean
    echo " "
    echo "You should reboot your system now."
    echo "Do you want to reboot now? (y/n)"
    read doreboot
    if [ $doreboot = "y" ] || [ $doreboot = "Y" ]
      then
        reboot
    fi
fi
