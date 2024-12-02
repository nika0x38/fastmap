#!/bin/bash

# Check if the script is executed as a superuser to allow moving the file to /usr/local/bin
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as a superuser." 1>&2
    exit 1
fi

# Move the script to /usr/local/bin and adjust its permissions
cp fastmap /usr/local/bin/fastmap
chmod +x /usr/local/bin/fastmap

echo "fastmap has been successfully installed and is ready to use."
