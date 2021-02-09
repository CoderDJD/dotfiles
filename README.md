# Dotfiles

All of my profile files and defaults compiled for you to get started coding.

## Steps :

# Setup :

    1. Install Homebrew.
        1. Update Homebrew.
        2. Install iTerm2 : Terminal Emulator.
            1. Install bash.
            2. Set Bash as default Shell.
        3. Install window manager.
        4. Install browser.
        5. Install Coder Editor.
        6. Install Git.
        7. Install vcprompt.
        8. Tap into brew MongoDB.
            1. Install mongosh.
    2. Install Node and NPM
    3. Get config files and set config files.
    4. Configure Git.
        1. git config --global user.name "e. example example"
        2. git config --global user.email example@example.com
        3. git config --global core.editor nano
        4. git config --global init.defaultBranch main
    5. Configure NPM.
      1. npm config set init-author-name "your name" -g
      2. npm config set init-author-email "your email" -g
      3. npm config set init-license "MIT" -g
      4. npm config set init-author-url "your url" -g
    6. Configure iTerm2 and Visual Studio Code.
    7. Configure Browser extensions.

## For MacOS :

- Could be copied and pasted into terminal.
- Is not quiet/silent install.

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install iterm2 --cask
brew install bash
chsh -s usr/local/bin/bash
echo usr/local/bin/bash >> etc/shells
brew install spectacle --cask
brew install google-chrome-dev --cask
brew install firefox-developer --cask
brew install visual-studio-code --cask
brew install git
brew install vcprompt
brew tap mongodb/brew
brew install mongosh
brew install node
brew install npm
cd ~
mkdir dev/
cd dev/
mkdir web/
mkdir des/
cd ~
git clone https://github.com/CoderDJD/dotfiles.git
cd dotfiles
while read line; do code --install-extension "$line";done  < vscode.txt
cd ~
sudo touch .profile
sudo mv ./dotfiles/.profile ../.profile
echo "Copy and paste vscode.settings.json into settings.json. Press Cmd+Shift+P to open command pallet. Type Shell and choose Shell Command : Install 'code' command in path."
echo "Completed setup."
```

## For Windows :

- Is not silent.
- Please have Windows Subsystem for Linux enabled in order for this to run.
- Run it in the WSL terminal, not in the default CMD.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install bash
chsh -s usr/local/bin/bash
echo usr/local/bin/bash >> etc/shells
brew install git
brew install vcprompt
brew tap mongodb/brew
brew install mongosh
brew install node
brew install npm
cd ~
mkdir dev/
cd dev/
mkdir web/
mkdir des/
cd ~
git clone https://github.com/CoderDJD/dotfiles.git
cd dotfiles
while read line; do code --install-extension "$line";done  < vscode.txt
cd ~
sudo touch .profile
sudo mv ./dotfiles/.profile ../.profile
echo "May or may not work on windows."
echo "Copy and paste vscode.settings.json into settings.json. Press Ctrl+Shift+P to open command pallet."
echo "Completed basic setup."
```
