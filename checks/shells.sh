#!/bin/bash

script_dir="$(dirname "$0")"
temp_file="$script_dir/.connection_check.log"
echo "############SSH STATUS#############" > "$temp_file"
sudo netstat -tunap | grep 22 >> "$temp_file"
echo "###########POSSIBLE SHELLS#########" >> "$temp_file"
sudo netstat -tunap | grep -E "bash|sh|python|perl|nc|php" >> "$temp_file"

# Check if "ESTABLISHED" appears in the output
if grep -q "ESTABLISHED" "$temp_file"; then
    echo "############FOUND ESTABLISHED CONNECTIONS#############"
    ps aux | grep -E "bash|sh|python|perl|nc|php"
else
    echo "No ESTABLISHED connections found."
fi
rm -f "$temp_file"
