#!/bin/bash

echo "Hello World"
PERSON="Marek"
# read PERSON # read command takes argument from keyboard
echo "Hello $PERSON"

echo "File name $0"
echo "First argument $1"
echo "Second argument $2"
echo "Quoted argument $@"
echo "Quoted argument $*"

echo "Total number of arguments $#"

