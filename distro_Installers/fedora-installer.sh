#!/bin/bash

# This Script installs the .NET SDK or Runtime for Fedora.

echo "checkpoint 3, in dir $PWD" >/dev/tty
# Sources
source "function_Libraries/sdk_Library/sdk-7.sh"
source "function_Libraries/runtime_Library/aspnetcore-7.sh"
source "function_Libraries/runtime_Library/dotnet-7.sh"

# Prompt User
echo "Do you want to install the SDK or Runtime?"
echo "Enter ( sdk ) or ( rt )"
read answer

# Check if ( $answer ) is ( sdk or rt ).
case $answer in
    # If ( sdk )
    "sdk")
        installSDK7 dnf
    ;;
    "rt")
        echo "Do you want to install the ASP.NET or .NET Runtime"
        echo "Enter ( asp ) or ( net )"
        read answer

        case $answer in
            "asp")
                installASPNETCORE7 dnf
            ;;
            "net")
                installDOTNET7 dnf
            ;;
        esac
    ;;
esac            