#!/bin/bash

## probably shouldn't have this
sudo iptables -F

sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
