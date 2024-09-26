#!/bin/bash

echo "Setting correct permissions for critical system files..."

# Set permissions for /etc/passwd
echo "Securing /etc/passwd..."
sudo chmod 644 /etc/passwd

# Set permissions for /etc/shadow
echo "Securing /etc/shadow..."
sudo chmod 600 /etc/shadow

# Set permissions for /etc/sudoers
echo "Securing /etc/sudoers..."
sudo chmod 440 /etc/sudoers

# Set permissions for /root directory
echo "Securing /root directory..."
sudo chmod 700 /root

# Set permissions for user's .ssh directory and authorized_keys
echo "Securing ~/.ssh directory and authorized_keys..."
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# Set permissions for /etc/hosts.allow and /etc/hosts.deny
echo "Securing /etc/hosts.allow and /etc/hosts.deny..."
sudo chmod 644 /etc/hosts.allow /etc/hosts.deny

# Set permissions for /boot directory
echo "Securing /boot directory..."
sudo chmod 755 /boot

# Set permissions for /var/log directory
echo "Securing /var/log directory..."
sudo chmod 750 /var/log

# Set permissions for cron directories
echo "Securing cron directories..."
sudo chmod 700 /etc/cron.d /etc/cron.daily /etc/cron.hourly /etc/cron.monthly /etc/cron.weekly

# Set permissions for /etc/fstab
echo "Securing /etc/fstab..."
sudo chmod 644 /etc/fstab

# Set permissions for SSH configuration file
echo "Securing /etc/ssh/sshd_config..."
sudo chmod 600 /etc/ssh/sshd_config

echo "All critical permissions have been set successfully."
