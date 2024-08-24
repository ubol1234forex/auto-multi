#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano
# xmrigcc
yes | apt update 
yes | apt upgrade 
yes | apt install git 
yes | apt install wget 
yes | apt install proot 
yes | pkg install cmake 
yes | pkg install unzip 

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 
git clone https://github.com/ubol1234forex/jk8180-multi-update.git
cd jk8180-multi-update
chmod +x moveback.sh
cd ~
git clone https://github.com/ubol1234forex/jk8180-multi.git
cd jk8180-multi

git clone https://github.com/ubol1234forex/set-miner-name-cpu-all.git
chmod +x start.sh move.sh 

#ccminer
mkdir miner && cd miner
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 

#hansen333
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/download/Version-0.6/hansen33s-dero-miner-android-arm64.tar.gz
tar -xf hansen33s-dero-miner-android-arm64.tar.gz

#xmrigcc
wget https://github.com/Bendr0id/xmrigCC/releases/download/3.4.2/xmrigCC-miner_only-3.4.2-android-dynamic-arm64.zip
unzip xmrigCC-miner_only-3.4.2-android-dynamic-arm64.zip

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
