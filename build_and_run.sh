#!/bin/bash

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ASCII Banner
echo -e "${BLUE}"
echo "   ________    ____  _  __"
echo "  / ____/ /   / __ \| |/ /"
echo " / /   / /   / / / /|   / "
echo "/ /___/ /___/ /_/   /   | "
echo "\____/_____/\____/ /_/|_| "
echo -e "${NC}"
echo "Building and Running CLOX..."

# Compile the program
echo -e "${GREEN}Compiling...${NC}"
gcc -Wall main.c vm.c memory.c debug.c object.c table.c chunk.c compiler.c scanner.c value.c -o clox

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Compilation successful!${NC}"
    echo -e "${BLUE}Running CLOX...${NC}"
    echo "------------------------"

    # Check if a file argument was provided
    if [ $# -eq 1 ]; then
        echo "Running CLOX with file: $1"
        ./clox "$1"
    else
        echo "Starting CLOX in REPL mode..."
        ./clox
    fi
else
    echo -e "${RED}Compilation failed. Please check the errors above.${NC}"
fi