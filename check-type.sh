# Check File Type
# The code directory is absolutely jam-packed. To help us sift through the contents, you should create a script that prompts the user for a name of a file/directory and reports on whether it is a file or a directory.
# If it is a directory, you should also list the contents of said directory.

# Example use:
# $ ./YOUR_SCRIPT_HERE.sh
# # If user inputs "be-pets-and-owners" something like this should be printed to the terminal:
# be-pets-and-owners is a directory
# Contents of be-pets-and-owners:
# README.md

#!/bin/bash
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

read -p 'Name of file or directory: ' filename
echo ""

if [ -f ./nc-filesystem/code/$filename ]; then
    echo -e "$filename is a ${YELLOW}file${NC}" 
    exit
fi

if [ -d ./nc-filesystem/code/$filename ]; then
    echo -e "$filename is a ${YELLOW}directory${NC}"
    echo ""
    echo -e "Contents of $filename:"
    ls ./nc-filesystem/code/$filename
    exit
fi

echo -e "${RED}$filename does NOT exist${NC}"