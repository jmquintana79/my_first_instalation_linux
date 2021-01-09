# @Author: juan
# @Date:   2018-12-17T11:25:43+09:00
# @Last modified by:   juan
# @Last modified time: 2018-12-17T14:52:33+09:00

### BASIC ###

# actions settings:
alias "edit_profile"="nano $HOME/.bashrc"
alias "update_profile"="source $HOME/.bashrc"
alias show_profile="less $HOME/.bashrc"

## bash command
alias ll='ls -l'
alias lla="ls -lah"
alias lsize='ls -l --block-size=M'
alias rr='rm -rf'
alias disk='df -h'
alias size='du -sh'
aliasalias c='clear'
alias cls="clear"                   # Clear terminal display
alias count="ls -1 | wc -l"         # Count files in the current directory

# copy / paste commands (it is necessary install: sudo apt-get install xclip -y)
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
# bash command: miscellaneous
alias treed="tree -d"               # Tree command only showing directories.
alias create="touch"                # Create empty file.
alias cpwd='pwd|tr -d "\n"|pbcopy'  # Copy the working directory path
alias h="history"                   # Show terminal history
alias hl="history | tail"           # Show only the last terminal history
alias ~="cd ~"	                    # Go home
alias ..="cd .."                    # Go to parent directory
alias ...="cd ../../"               # Go back 2 directory levels
alias .3="cd ../../../"             # Go back 3 directory levels
alias .4="cd ../../../../"          # Go back 4 directory levels
alias .5="cd ../../../../../"       # Go back 5 directory levels
alias .6="cd ../../../../../../"    # Go back 6 directory levels
alias qfind="find . -name "         # Quickly search for file
alias image="eog"                   # Display an image / picture file.
# bash command: processes
alias "pspy"="ps aux --sort -rss | { head -1; grep python; }" # Show python processes
alias "pss"="ps -A | grep -i stress"                          # Show unresponsive processes
alias "kill"="kill -9"                                        # Kill process by UID
# bash command: watch
alias wls="watch 'ls -l --block-size=M'"
alias wll="watch 'ls -la'"
alias wpy="watch 'ps aux --sort -rss | { head -1; grep python; }'"
# bash command: apt
alias "ai"="sudo apt-get install"
alias "as"="sudo apt-cache search"
alias "au"="sudo apt-get update"

## git
alias gpush="git push origin master" # "git pull origin master && git push origin master"
alias gpull="git pull origin master"
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gr="git rm"
alias gc="git commit -m"

## anaconda
alias cs="conda search"  # + <<library>>
alias ci="conda install" # + <<library>>
alias cl="conda list"    # list installed libraries
alias "ce_create"="conda create --name" # + <<env name>> python=3.6
alias "ce_ls"="conda info --envs"
alias "ce_install"="conda install -n" # + <<env name>> <<library==version>>
alias "ce_on"="source activate" # + <<env name>>
alias "ce_off"="source deactivate"
alias "ce_rm"="conda remove --all --name" # + <<env name>>
alias "ce_fcreate"="conda env create -f" # + environment.yml

## shortcuts
alias open="pcmanfm"               # Open current directory with pcmanfm
alias sublime='subl &'                     # Open Sublime Text.
alias edit='subl'                          # Edit a text document with Sublime Text.

## paths
alias "cdp"="cd ~/Workspace/projects" # Go to workspace projects folder
alias "cdd"="cd ~/Workspace/data" # Go to workspace data folder



### EXTRA ###

# PATHS
#alias python='~/miniconda3/bin/python3.6'
#export PATH=$PATH:~/.local/bin
#export PATH=$PATH:/usr/bin/R
#export PATH=$PATH:/usr/local/bin

# monitoring
alias "monitor_network"="speedometer -l  -r wlp3s0 -t wlp3s0 -m $(( 1024 * 1024 * 3 / 2 ))"
alias "list_networks"="ip link show"
alias "monitor_disk"="nmon"
alias "monitor_space"="watch --interval=60 df --human-readable /dev/sda2"
# programs
alias browser='firefox &'
alias "gitk"="/usr/bin/gitk &"

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
