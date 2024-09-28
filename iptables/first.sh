#!/bin/bash

sudo iptables-save > restore.txt
sudo iptables-save > /usr/share/gutentag/sicherung/restoretables.txt
