#!/bin/bash

#install sshpass
sudo apt-get update -y
sudo apt-get install -y sshpass

#take inputs
read -p "Enter username:" username
read -p "Enter password:" password
read -p "Enter ipaddress:" ip_address

#access remote device and executes script
sshpass -p $password ssh -o StrictHostKeyChecking=no $username@$ip_address <<EOF 
sudo apt update -y  
sudo apt upgrade -y
EOF
#Mention the scripts <<EOF "script" EOF that you want to execute on the remote device
