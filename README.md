# SSH Certificate Automation Script

This project contains a simple Bash script that automates the setup of SSH keys for passwordless authentication on a local Linux environment.  

The script generates a new RSA key pair, configures the `authorized_keys` file, applies proper permissions, restarts the SSH service, and tests the connection to ensure passwordless login is successful.

---

## Features
- Creates a `.ssh` directory if it doesn’t exist  
- Generates a new 4096-bit RSA SSH key pair  
- Adds the public key to the `authorized_keys` file  
- Sets correct file permissions for security  
- Restarts the SSH service  
- Tests SSH login to localhost without a password  

---

## Requirements
- Linux environment with `ssh` and `ssh-keygen` installed  
- Sudo privileges (required to restart the SSH service)  

---

## Usage
1. Clone this repository:  
   ```bash
   git clone https://github.com/yourusername/ssh-cert-automation.git
   cd ssh-cert-automation

2. Make the script executable:
    ```bash
    chmod +x configure_ssh.sh

3. Run the script:
    ```bash
    ./configure_ssh.sh
