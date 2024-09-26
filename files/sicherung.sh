#!/bin/bash

# Define backup location - ensure this is a secure and obscure location
BACKUP_DIR="/usr/share/gutentag/sicherung/$(date +%F_%H-%M-%S)"
mkdir -p "$BACKUP_DIR"

echo "Backing up critical files to $BACKUP_DIR..."

# Backup Web Server Configurations
cp -r /etc/nginx/nginx.conf "$BACKUP_DIR"
cp -r /etc/nginx/sites-available/ "$BACKUP_DIR"
cp -r /etc/apache2/apache2.conf "$BACKUP_DIR"
cp -r /etc/apache2/sites-available/ "$BACKUP_DIR"

# Backup Web Content
cp -r /var/www/html "$BACKUP_DIR"

# Backup Database Files (ensure MySQL/MariaDB is stopped first if using raw file copy)
cp -r /var/lib/mysql "$BACKUP_DIR"

# Backup User Configuration Files
cp ~/.bashrc "$BACKUP_DIR"
cp ~/.bash_profile "$BACKUP_DIR"
cp ~/.ssh/authorized_keys "$BACKUP_DIR"

# Backup Cron Jobs
cp -r /etc/cron* "$BACKUP_DIR"

# Backup Specific /etc Files
cp /etc/fstab "$BACKUP_DIR"
cp /etc/ssh/sshd_config "$BACKUP_DIR"
cp /etc/hosts.allow "$BACKUP_DIR"
cp /etc/hosts.deny "$BACKUP_DIR"

# Backup Firewall Rules
cp /etc/iptables/rules.v4 "$BACKUP_DIR"  # For iptables
cp -r /etc/firewalld/zones/ "$BACKUP_DIR"  # For firewalld

echo "Backup completed successfully."
