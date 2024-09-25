#!/bin/bash
echo "############SSH STATUS#############" 
sudo netstat -tunap | grep 22 
echo "###########POSSIBLE SHELLS#########" 
sudo netstat -tunap | grep -E "bash|sh|python|perl|nc|php" 
echo "###########CURRENT USERS#########" 
who
