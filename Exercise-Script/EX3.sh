#!/bin/bash 



read -p "Enter the Server IP: " SERVER_IP
read -p "Enter the Server username: " USERNAME

echo "Pinging $SERVER_IP..."

if ping -c 3 "$SERVER_IP" > /dev/null 2>&1
then
    echo "Server is reachable!"

    if scp /etc/passwd "${USERNAM}E@${SERVER_IP}:/home/user" 2>/dev/null
    then
        echo "File transferred successfully!"
    else
        echo "Transfer failed. Check SSH keys or permissions."
    fi
else
    echo "Server is not accessible!"
    exit 1
fi
