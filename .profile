HOST_NAME=CoderDJD
source ~/.nvm/nvm.sh
nvm use stable
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

emojis=("🎧" "💻" "📱" "⌚️" "🌏" "👋" "🪵" "🔥" "🚀" "💾");

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

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
alias reload="source .profile"

# GIT ALIASES! DO HAVE THEM

alias gii="git init"
alias rapmon="git remote add"
alias suga="git clone"
alias jhope="git add *"
alias chaeyoung="git commit -a -m ':fire: :octocat: :atom: :vs:'"
alias jeongyeon="git commit -a -m ':fire: :rocket: :octocat: '"
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
alias niid="npm install -D"
alias nui="npm uninstall"

# DEPLOYMENT ALIASES

alias now="vercel"
alias jk="surge"
alias V="surge"
alias express-basic="npm install express volleyball cors helmet"

# ECHO ALIASES

alias BTS="echo RM, Jungkook, Jimin, J-Hope, Jin, SUGA, V"
alias display="echo 'Displaying Aliases ..' && alias"
alias features="echo 'To ship : surge,vercel; Version Management : Git & Github CLI; Code Style : ESLint; Static serve : serve;'"
alias inst="echo Lookout for Coding Train / Coding Garden / RiallyMundane / CozyCoding / Pokimane / Ninja streams, Play Rest-time favourites, clear the screen, do not forget to commit to git, have a good time coding. Bye..."

# Initialization

BTS
inst
features
