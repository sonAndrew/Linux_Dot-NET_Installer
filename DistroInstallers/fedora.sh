#!/bin/bash/

#This Script installs the .NET SDK or Runtime

echo "Do you want to install the SDK or Runtime?"
echo "Enter ( sdk ) or ( rt )"
read answer

# Check if ( $answer ) is ( sdk or rt ).
case $answer in
    # If ( sdk )
    "sdk") 
            
        sudo dnf update && \
            sudo dnf install dotnet-sdk-7.0
        ;;
    "rt")
        echo "Do you want to install the ASP.NET or .NET Runtime"
        echo "Enter ( asp ) or ( net )"
        read answer

        case $answer in
            "asp")
                sudo dnf update && \
                    sudo dnf install aspnetcore-runtime-7.0
            ;;
            "net")
                sudo dnf undate && \
                    sudo dnf install dotnet-runtime-7.0
            ;;
        esac
esac            