#!/usr/bin/env bash

## backup.sh : Automated Backup Script
#

## Source and Destination

SOURCE="/home/myscript/newfolder/"
DEST="/home/myscript/backups/"
DATE=$(date +%F_%H-%M-%S)
BACKUP_FILE="backup_$DATE.tar.gz"

## Create backup directory if not exists
mkdir -p "$DEST"

## Create the backup
tar -czf "$DEST/$BACKUP_FILE" "$SOURCE"

### Verify if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: $DEST/$BACKUP_FILE"
else
    echo "Backup failed!"
exit 1
fi

# Optional: Delete backups older than 2 days
find "$DEST" -type f -name "backup_*.tar.gz" -mtime +2 -exec rm {} \;

echo "Old backups cleaned up."
            
