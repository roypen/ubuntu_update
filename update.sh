#!/bin/bash

COLOUR='\033[0;32m'
NC='\033[0m'

echo -e "${COLOUR}\n Checking for system updates...${NC}\n"

if ! sudo apt update | grep 'All packages are up to date';
then
    echo -e "${COLOUR}\n Starting apt update...${NC}\n"
    sudo apt upgrade
fi


sleep 1

echo -e "${COLOUR}\n Starting snap update...${NC}\n"
sudo snap refresh

sleep 1

echo -e "${COLOUR}\n Starting flatpak update...${NC}\n"
flatpak update


