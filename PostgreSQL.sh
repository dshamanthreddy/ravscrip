#!/bin/bash

# Set the database name and the backup file name
DB_NAME="database"
BACKUP_FILE="database_backup.sql"
date=date=$(date '+%Y-%m-%d')

# Set the username and password for the database
DB_USERNAME="username"
DB_PASSWORD="password"

# Dump the database to a file
pg_dump -U $DB_USERNAME -W $DB_NAME > $BACKUP_FILE_${date}
echo "Database has been done on ${date}" >> /tmp/backup_log_${date}.log
