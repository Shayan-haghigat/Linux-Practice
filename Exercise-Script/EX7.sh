#!/bin/bash

IP_FILE=""
LOGFILE="pinglog_$(hostname)_$(date +%Y%m%d).log"

if [ ! -f "$IP_FILE" ]
then
    echo "Error: file '$IP_FILE' not found."
    exit 1
fi

while read ip
do
  [ -z "${ip}" ] && continue
  echo "$(date) - $ip $(ping -c1 -W2 $ip >/dev/null 2>&1 && echo UP || echo DOWN)" >> "$LOGFILE"
done < "$IP_FILE"
echo "Done. Log: ${LOGFILE}"
