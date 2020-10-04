#!/bin/sh

apt-get update
apt-get upgrade -y
apt-get install wget bzip2 -y
useradd -m teamspeak
cd /home/teamspeak
wget https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2
tar xjf teamspeak3-server_linux_amd64-3.12.1.tar.bz2
touch teamspeak3-server_linux_amd64/.ts3server_license_accepted
chown -R teamspeak teamspeak3-server_linux_amd64
rm teamspeak3-server_linux_amd64-3.12.1.tar.bz2
