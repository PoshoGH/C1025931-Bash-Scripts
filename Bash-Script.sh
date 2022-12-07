#!/bin/bash
 if [ "$(id -u)" != "0" ]; then  
   echo "This script must be run as root" 1>&2  
   exit 1  
 fi   #this is a simple if statement to check if the terminal is a root user
 
echo "Updating your software please wait."
sudo apt-get update -y && sudo apt-get upgrade -y #this updates the software so that we run into less issues going forward with the install
echo "Software Updated! Stand by for LAMP installation"
echo "Installing Apache2"
sudo -e apt-get install apache2 #this will install apache 2 and the -e will make sure the script closes on error to avoid a bad install
sudo service apache2 restart
echo "Installing MYSQL"
sudo -e apt-get
echo "Installing PHP"
sudo -e apt-get install php7.0
echo "LAMP Installed!"

