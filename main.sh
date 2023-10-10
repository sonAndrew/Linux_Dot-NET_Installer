#!/bin/bash

# This is the Main Script to install the .NET SDK or Runtime.

# Sources
source "./functional_Library/read-lines-in-file.sh"
source "./prompt_Library/main-prompts.sh"
source "./prompt_Library/formating-lines.sh"

# Ask for package manager
skip_line
ask_for_distrobution
skip_line
top_of_box
# Loop through and read each line of ( distros.txt )
read_lines "./distros.txt"
bottom_of_box
skip_line
notice
skip_line
prompt_to_enter_number
skip_line
# Get user value
read distro

case $distro in
	4)
		source "./distro_Installers/fedora-installer.sh"
	;;
	7)
		source "./distroInstallers/ubuntu-installer.sh"
	;;
esac