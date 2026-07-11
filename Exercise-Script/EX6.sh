#!/bin/bash

BACKUP_DIR="$HOME/backups"

mkdir -p "${BACKUP_DIR}"
DATE=$(date +%Y%m%d_%H%M%S)

tar -czf "${BACKUP_DIR}/home_backup_${DATE}.tar.gz" -C "${HOME}" --exclude="backups" .
