#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano

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

mkdir miner && cd miner
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 

wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/download/Version-0.6/hansen33s-dero-miner-android-arm64.tar.gz

tar -xf hansen33s-dero-miner-android-arm64.tar.gz

proot-distro install ubuntu

proot-distro login ubuntu

apt update -y

apt install wget -y

wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v0.3.17/rqiner-aarch64-mobile
