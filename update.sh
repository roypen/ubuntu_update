#!/bin/bash

COLOUR='\033[0;32m'
NC='\033[0m'

echo -e "${COLOUR}\n Aktualizacja w toku...${NC}\n"

sudo apt update & sudo apt upgrade

sleep 1

echo -e "${COLOUR}\n Aktualizuję snap...${NC}\n"
sudo snap refresh

sleep 1

echo -e "${COLOUR}\n Aktualizuję flatpak...${NC}\n"
flatpak update


