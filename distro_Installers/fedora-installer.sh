#!/bin/bash

# This Script installs the .NET SDK or Runtime for Fedora.

# echo "checkpoint 3, in dir $PWD" >/dev/tty
# Sources
source "./functional_Library/ask-for-sdk-or-runtime-and-check.sh"

# Prompt User
prompt_user_for_sdk_or_runtime SDK Runtime sdk rt
check_answer dnf