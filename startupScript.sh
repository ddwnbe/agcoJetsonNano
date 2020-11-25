#!/usr/bin/env bash
# AGCO ddwnbe 2020

# part 1: update and upgrade necessary modules/packages
sudo apt-get update
sudo apt-get upgrade
# when given the option, select GDM3 - NOT lightDM!

# part 2: tensorflow
# source: https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html
sudo apt-get update
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
sudo apt-get install python3-pip
sudo pip3 install -U pip testresources setuptools==49.6.0 
sudo pip3 install -U numpy==1.16.1 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow

# part 3: matplotlib & pyzmq
sudo pip3 install matplotlib
sudo pip3 install pyzmq

# part 4: (optional) upgrade gedit
# comment the following out, if this is not wanted
# be aware that not all linux editors work with jetson nano
sudo apt-get update -y
sudo apt-get install -y gedit-plugins

# part 5: increase memoryswap to 4gb
git clone https://github.com/JetsonHacksNano/resizeSwapMemory
cd resizeSwapMemory
./setSwapMemorySize.sh -g 4

reboot
# after this is done, run "installOpenCV.sh"


