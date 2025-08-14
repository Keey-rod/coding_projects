#!/bin/bash
# Configure SSH certificate for user to enable passwordless login to local environment 

# Create directory for ssh 
# Generate new ssh certifcate 
mkdir -p ~/.ssh
ssh-keygen -t rsa -b 4096 -C "$USER@localhost"

# Add newly generated cert to authorized_keys directory
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Restart ssh service
sudo service ssh restart 

# Test ssh 
ssh $USER@localhost