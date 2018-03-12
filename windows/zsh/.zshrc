#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases
source $HOME/.aliases

# Connect to docker
export DOCKER_HOST='tcp://0.0.0.0:2375'

# Set color scheme to .dircolors
eval "$(dircolors ~/.dircolors)";
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
