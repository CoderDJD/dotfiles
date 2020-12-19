## For MacOS :

- Could be copied and pasted into terminal.
- Is not quiet/silent install.

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew cask install iterm2
brew install bash
chsh -s usr/local/bin/bash
echo usr/local/bin/bash >> etc/shells
brew cask install spectacle
brew cask install google-chrome-dev
brew cask install firefox-developer
brew cask install visual-studio-code
brew install git
brew install vcprompt
brew tap mongodb/brew
brew install mongosh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
cd ~
mkdir dev/
cd dev/
mkdir web/
mkdir des/
cd ~
git clone https://github.com/CoderDJD/dotfiles/
cd dotfiles
while read line; do code --install-extension "$line";done  < vscode.txt
cd ~
sudo touch .profile
sudo mv ./dotfiles/.profile ../.profile
echo "Copy and paste vscode.settings.json into settings.json. Press Cmd+Shift+P to open command pallet. Type Shell and choose Shell Command : Install 'code' command in path."
echo "Completed basic setup. Checkout the setup stream at https://twitch.tv/CoderDJD to know more."
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
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
cd ~
mkdir dev/
cd dev/
mkdir web/
mkdir des/
cd ~
git clone https://github.com/CoderDJD/dotfiles/
cd dotfiles
while read line; do code --install-extension "$line";done  < vscode.txt
cd ~
sudo touch .profile
sudo mv ./dotfiles/.profile ../.profile
echo "May or may not work on windows."
echo "Copy and paste vscode.settings.json into settings.json. Press Ctrl+Shift+P to open command pallet. Type Shell and choose Shell Command : Install 'code' command in path. Type code.  in terminal. If it works, then "
echo "Completed basic setup. Checkout the setup stream at https://twitch.tv/CoderDJD to know more."
```
