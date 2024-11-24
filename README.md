# MacOS Workstation Setup

This will configure a MacOS workstation for my typical use cases.

## Pre Configure

Install required software:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible sshpass
```

Prep MacOS:

1. Enable SSH

## Run Playbook

```bash
ansible-playbook -i inventory playbook.yaml -K -k
```
