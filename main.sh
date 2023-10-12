#!/bin/bash

# This is the Main Script to install the .NET SDK or Runtime.

# Ask for package manager
echo "* What is your Distrobution based on?"
echo "***************************************"
echo "*                                     *"

# Loop through and read each line of ( distros.txt )
# VARIABLES
lineNumber=0

while IFS= read -r line; 
do 
	# Increase the value of ( lineNumber )
	((lineNumber++))
	case ${#line} in
		4)
			# echo "${#line}"
			printf '%s\n' "*            $lineNumber. $line                  *"
			;;
		6)
			# echo "${#line}"
			printf '%s\n' "*            $lineNumber. $line                *"
			;;
		8)
			# echo "${#line}"
			printf '%s\n' "*            $lineNumber. $line              *"
			;;
	esac
done < distros.txt
echo "*                                     *"
echo "***************************************"
echo " "
echo "* NOTICE - If your distro is not based on any of the distros listed, then ( ctr + c) to exit the program. *"
echo " "
echo "* Enter the number now!"
# Get user value
read distro

case $distro in
	1) # Alpine
		source "./distro-based-installers/alpine-installer.sh"
	;;
	2) # CentOS
		source "./distro-based-installers/centos-installer.sh"
	;;
	3) # Debian
		
	;;
	4) # Fedora
		source "./distro-based-installers/fedora-installer.sh"
	;;
	5) # openSUSE
		
	;;
	6) # SLES
		
	;;
	7) # Ubuntu
		
	;;
esac