#!/bin/bash

export $ANSIBLE_PROJECT=~/code/macos-workstation

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install base apps
brew install ansible sshpass
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable SSH
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

mkdir -p ~/code
git clone https://github.com/chrisbalmer/macos-workstation.git $ANSIBLE_PROJECT
cd $ANSIBLE_PROJECT

# Run playbook
ansible-playbook -i inventory playbook.yaml -K -k
