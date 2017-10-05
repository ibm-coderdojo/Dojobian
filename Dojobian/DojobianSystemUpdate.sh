#!/bin/bash

echo -e "Update the software repository"
/usr/bin/apt-get update

echo -e "Update the system"
/usr/bin/apt-get -y upgrade

read -t 10 -p "Hit ENTER to close this window" 
