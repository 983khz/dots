#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER="vivaldi-stable"
export EDITOR=nvim

# -- coloured manuals
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;40;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
# Make colorcoding available for everyone

Black='\[\e[0;30m\]'	# Black
Red='\[\e[0;31m\]'		# Red
Green='\[\e[0;32m\]'	# Green
Yellow='\[\e[0;33m\]'	# Yellow
Blue='\[\e[0;34m\]'		# Blue
Purple='\[\e[0;35m\]'	# Purple
Cyan='\[\e[0;36m\]'		# Cyan
White='\[\e[0;37m\]'	# White

# Bold
BBlack='\[\e[1;30m\]'	# Black
BRed='\[\e[1;31m\]'		# Red
BGreen='\[\e[1;32m\]'	# Green
BYellow='\[\e[1;33m\]'	# Yellow
BBlue='\[\e[1;34m\]'	# Blue
BPurple='\[\e[1;35m\]'	# Purple
BCyan='\[\e[1;36m\]'	# Cyan
BWhite='\[\e[1;37m\]'	# White

# Background
On_Black='\[\e[40m\]'	# Black
On_Red='\[\e[41m\]'		# Red
On_Green='\[\e[42m\]'	# Green
On_Yellow='\[\e[43m\]'	# Yellow
On_Blue='\[\e[44m\]'	# Blue
On_Purple='\[\e[45m\]'	# Purple
On_Cyan='\[\e[46m\]'	# Cyan
On_White='\[\e[47m\]'	# White

NC='\[\e[m\]'			# Color Reset

ALERT="${BWhite}${On_Red}" # Bold White on red background

# Useful aliases
alias ..='cd ..'
alias ls='ls -CF --color=auto'
alias ll='ls -lisa --color=auto'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
alias p="sudo pacman"
alias srch="pacman -Ss"
alias insl="sudo pacman -S"
alias l="ls -A"
alias rnger="~/AUR/ranger/ranger.py"
alias films="rnger /mnt/exhd1/films"
alias vi="nvim"
alias vim="nvim"
alias gpp="g++"
alias gay="toilet -f future -t --g"
alias metal="toilet -f future -t --m"
alias toiler="toilet -f future -t"
alias ncmp="ncmpcpp"

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

# Set prompt
#PS1="${Yellow}\u@\h${NC}: ${Blue}\w${NC} \\$ "
PS1=" \[\e[0;32m\]\[\e[m\]\[\e[1;34m\]\W\[\e[m\] % "
