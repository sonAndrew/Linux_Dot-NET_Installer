#!/bin/bash

# This is the Main Script to install the .NET SDK or Runtime.

# VARIABLES
lineNumber=0

# Ask for package manager
echo " "
echo "What is your Distrobution based on?"
echo " "
echo "***********************************"
echo "*                                 *"

# Loop through and read each line of ( distros.txt )
while IFS= read -r line; 
do 
	# Increase the value of ( lineNumber )
	((lineNumber++))
	case ${#line} in
		4)
			# echo "${#line}"
			printf '%s\n' "*          $lineNumber. $line                *"
			;;
		6)
			# echo "${#line}"
			printf '%s\n' "*          $lineNumber. $line              *"
			;;
		8)
			# echo "${#line}"
			printf '%s\n' "*          $lineNumber. $line            *"
			;;
	esac
done < distros.txt
echo "*                                 *"
echo "***********************************"

echo "If your distro is not listed, then ( ctr + c) to exit the program."
echo " "
echo "Enter the number now!"
echo " "
# Get user value
read distro

case $distro in
	4)
		source "./distro_Installers/fedora_Installer.sh"
	;;
	7)
		source "./distroInstallers/ubuntu_Installer.sh"
	;;
esac