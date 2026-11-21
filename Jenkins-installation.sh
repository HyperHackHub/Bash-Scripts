#!/bin/bash


echo " ------------------------------------------------------"
echo " "
echo "     		Installing Jenkins    		     "
echo ""
echo " ------------------------------------------------------"
echo ""

# Main Code working starts from here 

echo " -----------------Installing Java-------------- "
echo ""

sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version

echo ""
echo " -----------------Now Installing Jenkins-------------- "
echo ""

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins

echo ""
echo " Installed successfully"

