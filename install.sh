#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH in .zshrc for zsh or .bash_profile for bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
source ~/.zshrc
source ~/.bash_profile

# Test Homebrew installation
brew doctor

# Install formulae
brew install dockutil
brew install slack google-chrome 1password google-drive zoom chrome-remote-desktop-host

# Clear the dock and add specified items
dockutil --remove all --no-restart
dockutil --add '/Applications/Launchpad.app' --no-restart
dockutil --add '/Applications/Google Chrome.app' --no-restart
dockutil --add '/Applications/Slack.app' --no-restart

# Check if Talkdesk.app is installed and add it to the dock next to Slack if it is
if [[ -d "/Applications/Talkdesk.app" ]]; then
    dockutil --add '/Applications/Talkdesk.app' --after 'Slack' --no-restart
fi

dockutil --add '/System/Applications/Notes.app' --no-restart
dockutil --add '/System/Applications/Reminders.app' --no-restart
dockutil --add '/System/Applications/System Settings.app' --no-restart
dockutil --add '~/Downloads' --view fan --display folder --sort dateadded

# Clean up (Commented out since the Talkdesk download and install steps are also commented out)
# rm ~/Downloads/talkdesk-1.12.0.dmg

# Completion message
echo "Installation and setup complete!"
