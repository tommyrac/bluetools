#!/bin/bash

sudo echo "AllowUsers vagrant boba_fett
ClientAliveInterval 20
ClientAliveCountMax 0
MaxAuthTries 2" >> /etc/ssh/sshd_config
