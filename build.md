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
