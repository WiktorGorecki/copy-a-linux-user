#!/bin/bash

regex="*.pem" # Name of the certificate file
path="."      # Path to the certificate

echo "Looking for files"
files=`find $path -name $regex`

# Uncomment for debug or to get a string with all the files' paths
# echo "Theese files were found:"
# echo $files

for file in $files
do
# echo "Result of md5sum $file" This was unnecessary
echo `md5sum "$file"`
echo ""
done
