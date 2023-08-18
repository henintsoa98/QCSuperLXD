# QCSuperLXD
This repo contain an container image to view 2g/3g/4g packet with mobile phone

# PRE-INSTALLATION
On debian, install :
```
sudo apt install lxd
lxd init
```
User need to be in group lxd
```
sudo usermod -a G lxd $USER
```
or
```
sudo /usr/sbin/usermod lxd $USER
```

# SETUP
```
cd
mkdir tempdir
cd tempdir
```
Download this [image](https://drive.google.com/file/d/1nlfxKUWMWXk-DziegP4e8R3gepsNGxpA/view?usp=sharing) and copy it to ~/tempdir,
```
git clone --depth 1 https://github.com/henintsoa98/QCSuperLXD
cd QCSuperLXD
chmod +x *
sudo cp * /usr/local/bin
cd ..
lxd-image import QCSuper 885cab44d2a87c24e6bacb746dfd89b317839bc9398fa62e266aeb565913affe.tar.gz
# exit if it enter into the container, to finish setup
# plug your rooted device and enable adb debugging
lxd-device add QCSuper newADB
# select an number that is your device in the list
```
# RUN
just type :
```
lxc exec QCSuper -- run
```

