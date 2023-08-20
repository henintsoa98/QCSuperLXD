#!/bin/bash

chmod +x lxd-device lxd-image
sudo cp lxd-device lxd-image /usr/local/bin

mkdir IMAGE
cd IMAGE

# https://drive.google.com/file/d/1nlfxKUWMWXk-DziegP4e8R3gepsNGxpA/view?usp=sharing
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1nlfxKUWMWXk-DziegP4e8R3gepsNGxpA' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1nlfxKUWMWXk-DziegP4e8R3gepsNGxpA" -O 885cab44d2a87c24e6bacb746dfd89b317839bc9398fa62e266aeb565913affe.tar.gz && rm -rf /tmp/cookies.txt

lxd-image import QCSuper 885cab44d2a87c24e6bacb746dfd89b317839bc9398fa62e266aeb565913affe.tar.gz
# exit if it enter into the container, to finish setup
# plug your rooted device and enable adb debugging
lxd-device add QCSuper newADB
# select an number that is your device in the list
