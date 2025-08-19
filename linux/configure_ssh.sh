#!/bin/bash
# ------------------------------------------------------------
# Script: configure_ssh.sh
# Purpose: Automates the setup of SSH certificates for 
#          passwordless login to the local environment.
# ------------------------------------------------------------

# Create .ssh directory if it doesn't exist
mkdir -p ~/.ssh

# Generate a new RSA SSH key pair (4096-bit) with a comment
ssh-keygen -t rsa -b 4096 -C "$USER@localhost"

# Add the public key to the authorized_keys file
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

# Set correct permissions for authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Restart SSH service to apply changes
sudo service ssh restart

# Test passwordless SSH login to localhost
ssh "$USER"@localhost
