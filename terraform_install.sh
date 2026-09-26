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

echo -e "${CYAN}					  Terraform Installation${NC}						 "

echo ""
echo ""
 
echo "==========================================================================================="

echo ""
echo ""

echo -e "${YELLOW}1.${NC} Ubuntu "
echo -e "${YELLOW}2.${NC} Amazon Linux "
#echo -e "${BLUE}3.${NC} Other OS (support coming soon) "
#echo -e "${RED}4.${NC} Back "
echo ""

read -p "Please choose OS to proceed automatic terraform installation : " os 

echo ""

if [ "$os" = 1 ]; then

		sudo wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform 

	elif [ "$os" = 2 ]; then 

		sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform

    else 
        echo -e "${RED}Invalid option${NC}"
        exit 1
fi