#!/usr/bin/bash
# AGCO 2020

# this script installs opencv. be aware that it takes ~3 hours to finish
# before running this script, check the link and look at the file
# download and run it manually, if edits are wanted
git clone https://github.com/mdegans/nano_build_opencv
cd nano_build_opencv
./build_opencv.sh
reboot