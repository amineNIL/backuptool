#!/bin/bash
# backup-tool
mkdir -p ~/backups

backup_folder() {
    source_folder=~/projects/health-check
    timestamp=$(date +%Y-%m-%d_%H-%M-%S)
    backup_name="health-check_backup_$timestamp"

    cp -r "$source_folder" ~/backups/"$backup_name"
    echo "Backup created: $backup_name"
}


cleanup_old_backups() {
    cd ~/backups
    backup_count=$(ls -d health-check_backup_* | wc -l)

    if [ "$backup_count" -gt 5 ]; then
        ls -dt health-check_backup_* | tail -n +6 | xargs rm -rf
        echo "Old backups cleaned up. Keeping the 5 most recent."
    else
        echo "No cleanup needed. Only $backup_count backup(s) exist."
    fi
}

backup_folder
cleanup_old_backups
