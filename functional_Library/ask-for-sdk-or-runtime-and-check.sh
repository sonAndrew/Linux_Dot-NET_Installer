#!/bin/bash

# Sources
source "./sdk_Library/sdk-7.sh"
source "./runtime_Library/aspnetcore-7.sh"
source "./runtime_Library/dotnet-7.sh"
source "./prompt_Library/main-prompts.sh"
source "./prompt_Library/distro-prompts.sh"

prompt_user_for_sdk_or_runtime(){
    skip_line
    ask_which_to_install $1 $2
    skip_line
    prompt_value_for_install $3 $4
    read answer
}

check_answer(){
    # Check if ( $answer ) is ( sdk or rt ).
    case $answer in
        # If ( sdk )
        "sdk")
            installSDK7 $1
        ;;
        "rt")
            skip_line
            ask_which_to_install ASP.NET .NET Runtime
            skip_line
            prompt_value_for_install asp net
            read answer

            case $answer in
                "asp")
                    installASPNETCORE7 $1
                ;;
                "net")
                    installDOTNET7 $1
                ;;
            esac
        ;;
    esac  
}