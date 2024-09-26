#!/bin/bash

# Define the .ssh directory path
SSH_DIR="$HOME/.ssh"

echo "Securing SSH-related files and directories..."

# Set permissions for the .ssh directory
chmod 700 "$SSH_DIR"

# Set permissions for authorized_keys
chmod 600 "$SSH_DIR/authorized_keys"

# Set permissions for private keys (if present)
chmod 600 "$SSH_DIR/id_rsa" "$SSH_DIR/id_dsa" "$SSH_DIR/id_ed25519" "$SSH_DIR/id_ecdsa" 2>/dev/null

# Set permissions for public keys
chmod 644 "$SSH_DIR/id_rsa.pub" "$SSH_DIR/id_dsa.pub" "$SSH_DIR/id_ed25519.pub" "$SSH_DIR/id_ecdsa.pub" 2>/dev/null

# Set permissions for known_hosts
chmod 644 "$SSH_DIR/known_hosts" 2>/dev/null

# Set permissions for SSH config
chmod 600 "$SSH_DIR/config" 2>/dev/null

echo "SSH file permissions have been secured successfully."
