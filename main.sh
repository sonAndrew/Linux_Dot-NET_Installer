#!/bin/bash

# This is the Main Script to install the .NET SDK or Runtime.

# Sources
source "./functional_Library/ask-for-sdk-or-runtime-and-check.sh"
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
# Get user value
read distro

case $distro in
	1) # Alpine
		# source "./distro_Installers/fedora-installer.sh"
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer apk
	;;
	2) # CentOS
		# source "./distro_Installers/fedora-installer.sh"
		# Microsoft Package Signing Key
		sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer yum
	;;
	3) # Debian
		# source "./distro_Installers/fedora-installer.sh"
		# Microsoft Package Signing Key
		wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
		sudo dpkg -i packages-microsoft-prod.deb
		rm packages-microsoft-prod.deb
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer apt-get
	;;
	4) # Fedora
		# source "./distro_Installers/fedora-installer.sh"
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer dnf
	;;
	5) # openSUSE
		# source "./distro_Installers/fedora-installer.sh"
		# Microsoft Package Signing Key
		sudo zypper install libicu
		sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
		wget https://packages.microsoft.com/config/opensuse/15/prod.repo
		sudo mv prod.repo /etc/zypp/repos.d/microsoft-prod.repo
		sudo chown root:root /etc/zypp/repos.d/microsoft-prod.repo
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer zypper
	;;
	6) # SLES
		# source "./distro_Installers/fedora-installer.sh"
		# Microsoft Package Signing Key
		sudo rpm -Uvh https://packages.microsoft.com/config/sles/15/packages-microsoft-prod.rpm
		# Create a Symlink to the correct directory
		sudo ln -s /etc/yum.repos.d/microsoft-prod.repo /etc/zypp/repos.d/microsoft-prod.repo
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer zypper
	;;
	7)
		# source "./distroInstallers/ubuntu-installer.sh"
		# Prompt User
		prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
		check_answer apt-get
	;;
esac