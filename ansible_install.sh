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

echo -e "${CYAN}					  Ansible Installation${NC}						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo ""
echo " Installation of Ansible is in progress....."
echo ""

echo " Step 1: Updating package index "
    sudo apt update

echo " Step 2: Install software-properties-common (for add-apt-repository) "
    sudo apt install software-properties-common -y

echo " Step 3: Add official Ansible PPA"
    sudo add-apt-repository --yes --update ppa:ansible/ansible

echo " Step 4: Install Ansible "
    sudo apt install ansible -y

echo " Step 5: Verify Ansible installation "
    ansible --version
