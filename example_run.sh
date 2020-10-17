#!/bin/bash
# Wine application example launch script
# vvv  Remove this line  vvv
echo "Edit this script before running."; exit

# Change to script's directory
cd "$(cd "${0%/*}" && pwd)" || exit 1

# Set up Wine environment
source "./example_env"

# Set application .exe to run
EXE="bin/example.exe"

# Run application
cd "./bin" || exit 1
wine "${EXE}" "${@}"
