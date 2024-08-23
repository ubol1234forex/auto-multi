#!/bin/sh
yes | apt-get update && pkg upgrade
yes | apt-get install libjansson build-essential clang binutils git dialog
yes | apt-get install python3
yes | apt-get install libjansson wget nano

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 

git clone https://github.com/ubol1234forex/jk8180-multi.git
cd jk8180-multi
mkdir set-miner-name-cpu-all
chmod +x start.sh move.sh


mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 





