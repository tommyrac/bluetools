#!/bin/bash

# Reset UFW to default settings and disable it to start clean
sudo ufw reset

# Set default policies to deny all incoming and outgoing traffic
sudo ufw default deny incoming
sudo ufw default deny outgoing

# Allow outgoing ICMP echo requests and incoming replies indirectly through a broader range
sudo ufw allow out proto icmp

# Allow incoming and outgoing HTTP (port 80) and HTTPS (port 443) traffic for web server access and apt
sudo ufw allow http          # Allows incoming HTTP (port 80)
sudo ufw allow https         # Allows incoming HTTPS (port 443)
sudo ufw allow out 80/tcp    # Allows outgoing HTTP traffic
sudo ufw allow out 443/tcp   # Allows outgoing HTTPS traffic

# Allow outgoing DNS queries
sudo ufw allow out 53        # Allows outgoing DNS (UDP and TCP)

# Enable UFW with the defined rules
sudo ufw enable

# Show status and active rules
sudo ufw status verbose
