# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases
source $HOME/.aliases
#source <(kubectl completion zsh)

export VISUAL=nvim
export EDITOR=nvim

export ZSHZ_CASE=smart

# Dotnet cli settings
export PATH="$PATH:$HOME/.dotnet/tools"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
