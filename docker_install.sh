#!/bin/bash

# COLORS
###############################################################################

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'

NC='\033[0m'        # No Color

echo "==========================================================================================="
echo ""
echo ""

echo -e "${CYAN}					  Docker Installation${NC}						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo ""
echo " Installation of Docker is in progress....."
echo ""

echo " Step 1: Update package index and install prerequisites "
    sudo apt update
    sudo apt install -y ca-certificates curl gnupg

echo " Step 2: Add Docker's official GPG key and repo "

    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo " Step 3: Install Docker Engine + CLI + Compose plugin "
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo " Log out and log back in (or run: newgrp docker) for this to take effect "
    sudo usermod -aG docker $USER

echo " Step 4: Verify Docker installation "
    docker --version

    