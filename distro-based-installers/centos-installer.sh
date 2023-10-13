#!/bin/bash

# This Script installs the .NET SDK or Runtime for CentOS Linux 7.

# .NET Installation Page
# Link: https://learn.microsoft.com/en-us/dotnet/core/install/linux-centos

# Install .NET 7

# ### Install the SDK
# The .NET SDK allows you to develop apps with .NET. 
# If you install the .NET SDK, you don't need to install the corresponding runtime. 
# To install the .NET SDK, run the following command:

# sudo yum install dotnet-sdk-7.0

# ### Install the runtime
# The ASP.NET Core Runtime allows you to run apps that were made with .NET that didn't provide the runtime. 
# The following command installs the ASP.NET Core Runtime, which is the most compatible runtime for .NET. 
# In your terminal, run the following command:

# sudo yum install aspnetcore-runtime-7.0

# As an alternative to the ASP.NET Core Runtime, you can install the .NET Runtime, 
# which doesn't include ASP.NET Core support: replace aspnetcore7-runtime in the 
# previous command with dotnet7-runtime:

# sudo yum install dotnet-runtime-7.0

echo "* NOTICE"
echo "* The installation of .NET 7 is only available on CentOS 7."

# Prompt .NET install function.
prompt_install_type(){
    # Prompt which .NET you want to install.
    echo " "
    echo "***********************************"
    echo "*                                 *"
    echo "*  Which do you want to install?  *"
    echo "*                                 *"
    echo "*              $1                *"
    echo "*              $2            *"
    echo "*                                 *"
    echo "***********************************"
    echo " "
    echo "* Enter ( $3 ) or ( $4 )."
}

# Microsoft package signing key function.
centos_ms_signing_key(){
    # Before you install .NET, run the following commands to add the Microsoft package 
    # signing key to your list of trusted keys and add the Microsoft package repository. 
    # Open a terminal and run the following commands:
    sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
}

prompt_install_type SDK Runtime sdk rt
read install_type

case $install_type in
    sdk)
        prompt_install_type 7.0 6.0 7 6
        read version
        case $version in
            6)
                centos_ms_signing_key
                sudo yum install dotnet-sdk-6.0
            ;;
            7)
                centos_ms_signing_key
                sudo yum install dotnet-sdk-7.0
            ;;
        esac
    ;;
    rt)
        prompt_install_type ASP Dot-NET asp net
        read runtime_type

        case $runtime_type in
            asp)
                prompt_install_type 7.0 6.0 7 6
                read version
                case $version in
                    6)
                        centos_ms_signing_key
                        sudo yum install aspnetcore-runtime-6.0
                    ;;
                    7)
                        centos_ms_signing_key
                        sudo yum install aspnetcore-runtime-7.0
                    ;;
                esac
            ;;
            net)
                prompt_install_type 7.0 6.0 7 6
                read version
                case $version in
                    6)
                        centos_ms_signing_key
                        sudo yum install dotnet-runtime-6.0
                    ;;
                    7)
                        centos_ms_signing_key
                        sudo yum install dotnet-runtime-7.0
                    ;;
                esac
            ;;
        esac
    ;;
esac