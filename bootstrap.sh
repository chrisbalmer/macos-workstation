#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install base apps
brew install ansible sshpass

# Enable SSH
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

# Run playbook
ansible-playbook -i inventory playbook.yaml -K -k
