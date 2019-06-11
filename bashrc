# Vagrant Arch custom prompt
PS1='[harukai@kaenatsu-\h \w]\$ '
# Vagrant Kali prompt
PS1='\[\033[01;31m\]harukai@kaenatsu-\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# Vagrant Ubuntu prompt
PS1='harukai@kaenatsu-ubuntu:\w$ '

# Easy git commit
gcomm() {
    GITMESSAGE="$*"
    git commit -m "$GITMESSAGE"
}

# Checks file/folder size of first argument
function fsize() {
    du -sh "$1"
}

# Creates python shebang file
function createpy() {
    PYFILE="$1"
    touch "$PYFILE"
    echo "#!/usr/bin/env python3" >> "$PYFILE"
    vi "$PYFILE"
}

alias gpush='git push origin'
alias mpush='git push origin master'
alias gstat='git status .'
alias gdiff='git diff'
alias gadd='git add'
alias gpull='git pull origin'

# Custom alias
alias lll='ls -la'
alias ll='ls -l'
alias v='vim'
alias rbr='source ~/.bashrc'
alias cls='printf "\033c"'
alias hgcc='gcc -Wall -Werror -Wextra -pedantic'
alias mynetip='curl "ifconfig.me";echo'
alias ux='chmod u+x'

# Custom scripts
alias gitremotetoken=''
alias cleaner=''

# Bash behavior
#  -> Tab auto-complete
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
