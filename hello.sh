#!/bin/bash

echo "Current directory before cd: $(pwd)"

echo "Enter the directory name:"
read dir_name
mkdir "$dir_name"
cd "$dir_name" || { echo "Failed to cd"; exit 1; }

echo "Current directory after cd: $(pwd)"
