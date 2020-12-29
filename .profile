# Setup Commands

HOST_NAME=CoderDJD
source ~/.nvm/nvm.sh
nvm use stable
shopt -s autocd
shopt -s histappend

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

emojis=("🎧" "💻" "📱" "⌚️" "💾" "📻" "🖥" "⌨️" "🖱");

EMOJI=${emojis[$RANDOM % ${#emojis[@]}]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n %s 🗃 %s 🧐 %s \n" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI $ "

function mkcd() {
    mkdir $1 && cd $1
}

# Bash aliases

alias cls="clear"
alias lisa="cd && cd dev/wh"
alias rose="cd && cd dev/web"
alias bin="rm -rf"
alias jisoo="cd && cd dev/des"
alias current="dev/ToCodeIsACrime && cls"
alias editp="cd && code . .profile"
alias reload="cd && source .profile &&cd -"
alias ex="exit"

# GIT ALIASES! DO HAVE THEM

alias gii="git init"
alias rapmon="git remote add"
alias jeongyeon="git commit -a -m ':fire: :rocket: :octocat:'"
alias suga="git clone"
alias jhope="git add *"
alias chaeyoung="git commit -a -m ':fire: :octocat: :atom: :vs:'"
alias jennie="git status"
alias momo="git push"

# MAC APPLICATION ALIASES

alias c="code ."
alias o="open ."

# NPM ALIASES

alias jimin="npm run dev"
alias jin="npm start"
alias ni="npm init -y"
alias nii="npm install"
alias niid="npm install --save--dev"
alias nui="npm uninstall"

# DEPLOYMENT ALIASES

alias now="vercel"
alias jk="surge"
alias V="surge"
alias express-basic="npm install express volleyball cors helmet"

# ECHO ALIASES

alias BTS="echo RM, Jungkook, Jimin, J-Hope, Jin, SUGA, V"
alias da="echo 'Displaying Aliases ..' && alias"
alias features="echo 'To ship : surge,vercel ~ Version Management : Git & Github CLI ~ Code Style : ESLint ~ File Conversion : ffmpeg'"
alias inst="echo Lookout for Coding Train / Coding Garden / RiallyMundane / CozyCoding / Pokimane / Ninja / my streams, clear the screen, do not forget to commit to git, have a good time coding. Bye..."

# Initialization

BTS
inst
features
export PATH="/usr/local/sbin:$PATH"

function gf() {
    echo "Adding Changes ..."
    jhope
    echo "Committing to Git ..."
    if [[ $1 == ch ]]
        then
            chaeyoung
    fi
    if [[ $1 == jy ]]
        then
            jeongyeon
    fi
    echo "Pushing to GitHub ..."
    momo
}

function dot() {
    sudo cp ~/.profile  ~/CoderDJD/dotfiles/.profile
    sudo cp ~/Library/"Application Support"/Code/User/settings.json  ~/CoderDJD/dotfiles/vscode.settings.json
    echo "Don't forget to push to GitHub, D!"
}