# Setup Commands

HOST_NAME=CoderDJD
shopt -s autocd
shopt -s histappend

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export HISTSIZE=5000
export HISTFILESIZE=100
export CLICOLOR=1
export LSCOLORS=HxFxCxExBxxxxxxxxxxxxx

emojis=("🎧" "💻" "📱" "⌚️" "💾" "📻" "🖥" "⌨️" "🖱");

txtgrn='\e[1;92m' # Green
bldgrn='\e[1;32m' # Lime Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

EMOJI=${emojis[$RANDOM % ${#emojis[@]}]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    # printf "\n %s 🗃 %s 🧐 %s \n" "$HOST_NAME" "$dir" "$(vcprompt)"
    printf "\n $txtgrn%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI $ "

function mkcd() {
    mkdir $1 && cd $1
}

# Bash aliases

alias cls="clear && ls"
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

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/joshua/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/joshua/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/joshua/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/joshua/Downloads/google-cloud-sdk/completion.bash.inc'; fi
