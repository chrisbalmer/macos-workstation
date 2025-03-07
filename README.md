# MacOS Workstation Setup

This will configure a MacOS workstation for my typical use cases.

## Pre Configure

Install required software:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible sshpass
```

## Run Playbook

```bash
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
ansible-playbook -i inventory playbook.yaml -K -k
```

## TODO

- [ ] Add 1Password SSH Agent Config
- [ ] Link 1Password SSH Agent Socket (~/.1password/agent.sock)
- [ ] Move SSH enablement out of `bootstrap.sh` and into a role now that local connection is used
- [ ] Add configs for mac mouse fix
  - [ ] Left/right buttons
  - [ ] No update check
  - [ ] disable reverse direction
- [ ] Add configs for Safari (no location data, don't open safe attachments, disable password/form filling)
- [ ] Add firewall rule for mac mouse fix to little snitch
- [ ] Set tracking speed for mouse
- [ ] Add defaults for file types
  - [ ] Set vscode as default for most things
- [ ] Add prisma access browser
- [ ] Add xdr role
- [ ] Add uv installers
  - [ ] uv tool install --python 3.12 posting