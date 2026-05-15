#!/bin/bash
# This script requires SSH key-based authentication  
SOURCE="student@serverb:/etc/config"
DEST="/configbackup/"

if ! mkdir -p "$DEST"; then
    logger -p user.err "BACKUP FAIL: $DEST"
    exit 1
fi
# Sync using rsync
rsync -avz -e "ssh -o BatchMode=yes" --delete "$SOURCE" "$DEST"
# rsync check
if [ $? -eq 0 ]; then
    logger -p user.info "BACKUP SUCCESS"
else
    # logger crit error
    logger -p user.crit "BACKUP FATAL ERROR FOR: $SOURCE"
    exit 1
fi
