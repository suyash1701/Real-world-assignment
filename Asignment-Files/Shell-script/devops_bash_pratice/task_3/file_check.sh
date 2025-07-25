#!/bin/bash

echo "Enter The file name to check:"
read filename

if [ -f"$filename" ]; then
	echo "File '$filename' exists, Here's the content:"
	cat "$filename"
else 
	echo "File '$filename' does not exists."

fi 
