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
brew install --cask slack google-chrome 1password google-drive zoom chrome-remote-desktop-host

# Download and install Talkdesk
curl -o ~/Downloads/talkdesk-1.12.0.dmg "https://td-infra-prd-us-east-1-s3-atlaselectron.s3.amazonaws.com/talkdesk-1.12.0.dmg"
hdiutil attach ~/Downloads/talkdesk-1.12.0.dmg
sudo cp -R /Volumes/Talkdesk/Talkdesk.app /Applications
hdiutil detach /Volumes/Talkdesk

# Clear the dock and add specified items
dockutil --remove all --no-restart
dockutil --add '/Applications/Launchpad.app' --no-restart
dockutil --add '/Applications/Google Chrome.app' --no-restart
dockutil --add '/Applications/Slack.app' --no-restart
dockutil --add '/Applications/Talkdesk.app' --no-restart
dockutil --add '/System/Applications/Notes.app' --no-restart
dockutil --add '/System/Applications/Reminders.app' --no-restart
dockutil --add '/System/Applications/System Settings.app' --no-restart
dockutil --add '~/Downloads' --view grid --display folder --sort dateadded

# Clean up
rm ~/Downloads/talkdesk-1.12.0.dmg

# Completion message
echo "Installation and setup complete!"