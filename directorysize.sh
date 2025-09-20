#!/bin/bash

# Print the size of a directory

echo -n "Enter your directory: "
read -r x
du -sh "$x"
