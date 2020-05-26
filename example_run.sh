#!/bin/bash
# Wine application script template
# vvv  Remove this line  vvv
echo "Edit this script before running."; exit 1

# Change to script directory
cd "${0%/*}"

# Set up Wine environment
source "./example_env"

# Set application .exe to run
EXE="example.exe"

# Run application
cd "."
wine "${EXE}" ${@}
