#!/bin/bash

# This Script installs the .NET SDK or Runtime for Fedora Linux.

# Install .NET 7

# ### Install the SDK
# The .NET SDK allows you to develop apps with .NET. 
# If you install the .NET SDK, you don't need to install the corresponding runtime. 
# To install the .NET SDK, run the following command:

# sudo dnf install dotnet-sdk-7.0

# ### Install the runtime
# The ASP.NET Core Runtime allows you to run apps that were made with .NET that didn't provide the runtime. 
# The following command installs the ASP.NET Core Runtime, which is the most compatible runtime for .NET. 
# In your terminal, run the following command:

# sudo dnf install aspnetcore-runtime-7.0

# As an alternative to the ASP.NET Core Runtime, you can install the .NET Runtime, 
# which doesn't include ASP.NET Core support: replace aspnetcore7-runtime in the 
# previous command with dotnet7-runtime:

# sudo dnf install dotnet-runtime-7.0

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

prompt_install_type SDK Runtime sdk rt
read install_type

case $install_type in
    sdk)
        prompt_install_type 7.0 6.0 7 6
        read version
        case $version in
            6)
                sudo apt-get update && \
                    sudo dnf install dotnet-sdk-6.0
            ;;
            7)
                sudo apt-get update && \
                    sudo dnf install dotnet-sdk-7.0
            ;;
            *)
                printf "A valid input was not entered and now exiting program.\n"
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
                        sudo apt-get update && \
                            sudo dnf install aspnetcore-runtime-6.0
                    ;;
                    7)
                        sudo apt-get update && \
                            sudo dnf install aspnetcore-runtime-7.0
                    ;;
                    *)
                        printf "A valid input was not entered and now exiting program.\n"
                    ;;
                esac
            ;;
            net)
                prompt_install_type 7.0 6.0 7 6
                read version
                case $version in
                    6)
                        sudo apt-get update && \
                            sudo dnf install dotnet-runtime-6.0
                    ;;
                    7)
                        sudo apt-get update && \
                            sudo dnf install dotnet-runtime-7.0
                    ;;
                    *)
                        printf "A valid input was not entered and now exiting program.\n"
                    ;;
                esac
            ;;
            *)
                printf "A valid input was not entered and now exiting program.\n"
            ;;
        esac
    ;;
    *)
        printf "A valid input was not entered and now exiting program.\n"
    ;;
esac