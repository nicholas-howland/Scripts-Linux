#!/bin/bash
# update and install packages for getting teh script
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https -y
# add repositories
echo 'deb [ arch=amd64,arm64 ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
# get the gpg key
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
# install mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | sudo apt-key add -
echo "deb [trusted=yes] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt-get update
# get the exact version of SSL needed for mongodb
sudo wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb
# install the unifi Switch
sudo apt-get update && sudo apt-get install unifi -y


# install the dhcp server and configure print out the location of the dhcp server configurations

apt install dhcpd

echo ""
echo ""
echo "Be sure to change the /etc/udhcpd.conf and /etc/network/interfaces files to reflect the network"
echo ""