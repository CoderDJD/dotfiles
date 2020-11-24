# System Build :

## Code to run :

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
while read line; do code --install-extension "$line";done  < vscode-extensions.txt
cd ~
touch .profile
mv ./dotfiles/.profile ../.profile
echo "Copy and paste vscode.settings.json into settings.json. Press Cmd+Shift+P to open command pallet. Type Shell and choose Shell Command : Install 'code' command in path."
echo "Completed basic setup. Checkout the setup stream at https://twitch.tv/CoderDJD to know more."
```