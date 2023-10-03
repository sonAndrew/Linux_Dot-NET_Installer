#!/bin/bash

# This Script installs the .NET SDK or Runtime for Fedora.

# Sources
source "../function_Libraries/sdk_library/"
source "../function_Libraries/runtime_Library/"

# Prompt User
echo "Do you want to install the SDK or Runtime?"
echo "Enter ( sdk ) or ( rt )"
read answer

# Check if ( $answer ) is ( sdk or rt ).
case $answer in
    # If ( sdk )
    "sdk")
        installSDK7
    ;;
    "rt")
        echo "Do you want to install the ASP.NET or .NET Runtime"
        echo "Enter ( asp ) or ( net )"
        read answer

        case $answer in
            "asp")
                installASPNETCORE7
            ;;
            "net")
                installDOTNET7
            ;;
        esac
    ;;
esac            