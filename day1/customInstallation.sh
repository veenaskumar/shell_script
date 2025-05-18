#! bin/bash

# reading the package form user

echo "Enter the package name :" 
read package_name


echo "Finding the OS"
operating_system = $(uname -s)

# it should run in gitbash only for windows
if [ "$operating_system" == "MINGW64_NT-*" ];
then 
  echo "Running on Windows via Git Bash"
  # here bug : filter 1st result only not go after 1st
  id = $(winget search --name $package_name | grep -m 1 "$package_name" | awk '{print $2}')
  $(winget install --id "$id" -e)

if [ "$operating_system" == "Linux" ];
then
  echo "Running on Linux via terminal"

if [ "$operating_system" == "Darwin" ];
then
  echo "Running on Mac via Terminal"

fi;
