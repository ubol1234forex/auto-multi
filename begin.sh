#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 
git clone https://github.com/ubol1234forex/jk8180-multi.git
cd jk8180-multi
git clone https://github.com/ubol1234forex/set-miner-name-cpu-all.git

chmod +x start.sh

mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 



