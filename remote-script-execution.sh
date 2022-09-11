#!/bin/bash

#installs sshpass
sudo apt-get update -y
sudo apt-get install -y sshpass

#takes inputs
read -p "Enter username:" username
read -p "Enter password:" password
read -p "Enter ipaddress:" ip_address

#access remote device and executes script
sshpass -p $password ssh -o StrictHostKeyChecking=no $username@$ip_address <<EOF 
#Mention the scripts here that you want to execute on the remote device
EOF

