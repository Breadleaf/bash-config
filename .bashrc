######################################################

# By: Breadleaf
# Desc: This is my .bashrc file. (BASH shell config)

######################################################

# General Setup

######################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# For some reason this wasn't enabled by default
shopt -s extglob

# Set the colors in the tty
if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0232323" # BLACK
	echo -en "\e]P82B2B2B" # DARK GREY
	echo -en "\e]P1D75F5F" # DARK RED
	echo -en "\e]P9E33636" # RED
	echo -en "\e]P287AF5F" # DARK GREEN
	echo -en "\e]PA98E34D" # GREEN
	echo -en "\e]P3D7AF87" # BROWN
	echo -en "\e]PBFFD75F" # YELLOW
	echo -en "\e]P48787AF" # DARK BLUE
	echo -en "\e]PC7373C9" # BLUE
	echo -en "\e]P5BD53A5" # DARK MAGENTA
	echo -en "\e]PDD633B2" # MAGENTA
	echo -en "\e]P65FAFAF" # DARK CYAN
	echo -en "\e]PE44C9C9" # CYAN
	echo -en "\e]P7E5E5E5" # LIGHT GRAY
	echo -en "\e]PFFFFFFF" # WHITE
	clear # FOR BACKGROUND ARTIFACTING
fi


######################################################

# Exports

######################################################

export HISTCONTROL=erasedups:ignorespace

######################################################

# Alias

######################################################

# remove all alias
unalias -a

# .bashrc
alias srcb="source ~/.bashrc"
alias edb="vim ~/.bashrc"

# source all alias
source ~/.bash_alias
source ~/.bash_functions
#source ~/.bash_custom
#source ~/.bash_ssh

######################################################

# Other Configurations

######################################################


# PS1 Configurations
if [ "$TERM" == "linux" ]; then
	PS1='\[\e[0m\],\[\e[0m\]-\[\e[0m\]{\[\e[0;95m\]\D{} \[\e[0m\]| \[\e[0;95m\]\d\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0;95m\]$?\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\]}\n\[\e[0m\]'"'"'\[\e[0m\]-\[\e[0m\]{\[\e[0;95m\]\u \[\e[0m\]@ \[\e[0;95m\]\h\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0;95m\]\w\[\e[0m\]}\[\e[0m\]-\[\e[0m\]>\[\e[0m\]>\[\e[0m\] '
else
	PS1='\[\e[0m\]{\[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0m\]$?\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\h\[\e[0m\]}\[\e[0m\]-\[\e[0m\]{\[\e[0m\]\w\[\e[0m\]}\[\e[0m\]-\[\e[0m\]>\[\e[0m\]> \[\e[0m\]'
fi
