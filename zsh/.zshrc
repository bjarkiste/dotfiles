# Path to your oh-my-zsh installation.
export ZSH=/home/bjarki/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="bjarki"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git taskwarrior zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.aliases

# Functions
add_sudo ()
{
	prefix="sudo"
	BUFFER="$prefix $BUFFER"
	CURSOR=$(($CURSOR + $#prefix + 1))
}
zle -N add_sudo
bindkey "^f" add_sudo

# Show tasks when terminal is opened
# Else I forget
task list
