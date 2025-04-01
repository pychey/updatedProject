#!/usr/bin/env bash

echo "Search File"
read -p "Enter Directory: " dir
read -p "Enter file name or extension: " search_term

if [ ! -e "$dir" ]; then 
	echo "Error Listing: $dir Dont Exist"
	./script/logOperation.sh "Error Listing: $dir Dont Exist"
	exit 1
fi

find "$dir" -type f -name "*$search_term*"
./script/logOperation.sh "searched $search_term in $dir"
