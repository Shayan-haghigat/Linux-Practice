#!/bin/bash


#####################################################
# 0 2 * * * /path/to/your/script.sh 
# Use this in the Crontab with crontab -e
#####################################################


DIR=$HOME

mkdir -p "${DIR}"

cut -d ":" -f 1,3 /etc/passwd > "$DIR/$(date +%Y%m%d).txt"

find "$DIR" -name '*.txt' -mtime +1 -delete


