#!/bin/bash

sudo iptables-save > restore.txt
sudo iptbales-save > /usr/share/gutentag/sicherung/restoretables.txt
