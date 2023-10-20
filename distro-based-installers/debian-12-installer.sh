#!/bin/bash

# This Script installs the .NET SDK or Runtime for Debian Linux.

# Install .NET 7 on Debian 12

# When a Debian version falls out of support, .NET is no longer supported with that version. 
# However, these instructions may help you to get .NET running on these versions, even though it isn't supported.
# Install the SDK (which includes the runtime) if you want to develop .NET apps. Or, if you only need to run apps, install the Runtime. 
# If you're installing the Runtime, we suggest you install the ASP.NET Core Runtime as it includes both .NET and ASP.NET Core runtimes.

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
# Microsoft Package Signing Key
ms_pkg_signing_key(){
    wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb
}

prompt_install_type SDK Runtime sdk rt
read install_type

case $install_type in
    
    sdk)
        
        prompt_install_type 7.0 6.0 7 6
        read version
        case $version in
            6)
                ms_pkg_signing_key
                sudo apt-get install -y dotnet-sdk-6.0
            ;;
            7)
                ms_pkg_signing_key
                sudo apt-get install -y dotnet-sdk-7.0
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
                        ms_pkg_signing_key
                        sudo apt-get install -y aspnetcore-runtime-6.0
                    ;;
                    7)
                        ms_pkg_signing_key
                        sudo apt-get install -y aspnetcore-runtime-7.0
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
                        ms_pkg_signing_key
                        sudo apt-get install -y dotnet-runtime-6.0
                    ;;
                    7)
                        ms_pkg_signing_key
                        sudo apt-get install -y dotnet-runtime-7.0
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