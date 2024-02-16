# CXC Apps Installation Script

This script automates the setup of a productive work environment on macOS. It simplifies the installation of essential tools and applications, making it easy to get up and running quickly. Here's what the script does:

## Features

- **Installs Homebrew:** Homebrew is a package manager for macOS, used for installing UNIX tools and other open-source applications on macOS.
- **Configures Homebrew in your shell:** Adds Homebrew to the PATH in `.zshrc` for Zsh users or `.bash_profile` for Bash users, ensuring commands and software installed with Homebrew are accessible from the terminal.
- **Verifies Homebrew Installation:** Runs `brew doctor` to check that Homebrew is set up correctly.
- **Installs Essential Tools and Applications:** Uses Homebrew to install:
  - `dockutil` for managing the macOS Dock.
  - Essential applications like Slack, Google Chrome, 1Password, Google Drive, and Zoom through Homebrew Casks.
- **Customizes the macOS Dock:** Clears the Dock and adds frequently used applications like Launchpad, Google Chrome, Slack, Notes, Reminders, System Settings, and a Downloads folder for quick access.

## Installation

To run this script, open your terminal and execute the following command:

```bash
curl -fsSL https://raw.githubusercontent.com/mobi-debug/cxc-apps/main/install.sh | bash
