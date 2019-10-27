#@IgnoreInspection BashAddShebang
# List directory each time directory is changed (run `ls -la` after each `cd`)
function chpwd() {
    ls -lF
}

# Cute git push alternative:) Execute: "nasa launch rocket" and git push will be called
nasa() { if [[ $@ == "launch rocket" ]]; then command git push; else command echo "common launch it"; fi; }

# Processes
alias tu='top -o cpu' # cpu
alias tm='top -o size' # memory

# Tmux
alias sc='tmux'

# Apache
alias restartApache="sudo apachectl restart"

# Navigation
alias ..='cd ..' # Go Up
alias ...='cd ../../' # Go Up 2 levels
alias cdd='cd -' # Go Back
alias desk='cd ~/Desktop' # Shortcut to code dir
alias dcode='cd ~/code' # Shortcut to code dir
alias sites='cd ~/Sites' # Shortcut to Sites dir
alias dotfiles='cd ~/.dotfiles' # Shortcut to CLI dotfiles dir
alias guifiles='cd ~/.dotfiles-xfce' # Shortcut to GUI dotfiles dir

# List files/dirs
alias ls='ls -G'
alias l='ls -lF'
alias la='ls -lAGh'
# list only unhidden directories
alias ld='ls -lF | grep "^d"'
# list all directories
alias lad='ls -la | grep "^d"'

# `cat` with beautiful colors. requires Pygments installed
# inspired by [Paul Irish](https://github.com/paulirish/dotfiles)
alias v='pygmentize -O style=default -f console256 -g'

# Editing
alias brel='source ~/.zshrc'
alias ea='vim ~/.dotfiles/zsh/includes/aliases && brel'
alias vi='vim'
alias ev='vim ~/.vimrc' # Auto-recompiling is set in .vimrc itself

alias h='history'

# Git shortcuts
#alias git=hub # use ~/bin/hub as wrapper for git
alias s='git status --short --branch '
alias ss='git status '
alias a='git add '
alias b='git branch '
alias c='git commit '
alias t='git tag -n1'
alias di='git diff'
alias dw='git diff --color-words' # show modified words
# alias df='git diff --name-only' # show modified filenames
alias m='git merge --no-ff' # Non-Fast-Forward merge
alias mf='git merge --ff-only' # Fast-Forward merge
alias go='git checkout '
alias pull='git pull '
alias push='git push '
# Subtree Pull in
function spull() { git subtree pull --prefix=$1 $1 master }
# Subtree Push upstream
function spush() { git subtree push --prefix=$1 $1 master }
# Subtree Add new one
function sadd() { git subtree add --prefix=$1 $1 master }
# Undo a `git push`
alias undopush="git push -f origin HEAD~:master"
alias lg='git log -p'
alias lol='git log --graph --decorate --abbrev-commit --date=relative --pretty=format:"%C(yellow)%h%C(reset) %C(green)%ad%C(reset) %C(blue)%an%C(reset)%C(red)%d%C(reset) %s"'
alias lola='lol --all'
# Show files ignored by git
alias ign='git ls-files -o -i --exclude-standard'
# Show useful info about any remote (pass remote name as argument)
alias inf='git remote show '
# Export current commit changes against ref to patch file
alias gfp='git format-patch --stdout > patch'

alias fetch="git fetch origin master"
alias fetchp="git fetch prod master"
alias fetchs="git fetch stg master"
alias fetchd="git fetch dev master"

alias pushs="git push stg master"
alias pushp="git push prod master"
alias pushd="git push dev master"

alias pulls="git pull stg master"
alias pullp="git pull prod master"
alias pulld="git pull dev master"

# Additional binaries

# Todo App (todotxt.org)
alias t='~/bin/todo.txt_cli-2.9/todo.sh'

# IRSSI draw fix - http://www.mindfuzz.net/?p=393
alias irssi='TERM=screen-256color irssi'

# Betty - Friendly English-like interface for CLI
# More details: https://github.com/pickhardt/betty
alias betty="~/.dotfiles/betty/main.rb"

# Fire up simple server and open it's root page in the browser
alias server="open http://localhost:8000 && python -m SimpleHTTPServer"

# Send OS X notification
alias notify='terminal-notifier -message "Done" -activate com.googlecode.iterm2'

alias ccb="xsel -ib <"

# support unicode chars always
alias tmux="tmux -u"

# tmux new session with name
alias txns="tmux new-session -s"

# tmux join session by name
alias txjs="tmux a -t"

alias ntw="sudo service NetworkManager restart"

alias cb="bash ~/.dotfiles/zsh/includes/copy-clipboard.sh"

alias gfap="git fetch --all --prune"

