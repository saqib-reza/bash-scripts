#!/usr/bin/env bash

## bulk-useradd.sh : Create multiple users with default password

USERFILE="users.txt"
PASSWORD="Welcome@123"   # Default password (should be changed by users)

## Check if user file exists
if [ ! -f "$USERFILE" ]; then
    echo "User file $USERFILE not found!"
exit 1
fi

while read -r username; do
    if id "$username" &>/dev/null; then
	echo "User $username already exists, skipping..."
    else
    # Create user with home directory and bash shell
	useradd -m -s /bin/bash "$username"
                                           
    # Set default password
	echo "$username:$PASSWORD" | chpasswd
                                                                        
    # Force password change on first login
	passwd -e "$username"
                                                                             
	echo "User $username created successfully."
    fi
done < "$USERFILE"
                                                                                                            
