PROMPT=''

if [[ -n $SSH_CONNECTION ]]; then
	PROMPT+='%{$fg[red]%}%n@%m%{$reset_color%} '
fi

PROMPT+='%{$fg[blue]%}$(zsh ~/.oh-my-zsh/path.zsh -l -t)%{$reset_color%}'

PROMPT+='$(git_prompt_info)'

PROMPT+=' %{$fg[green]%}➜%{$reset_color%} '

PROMPT2="%{$fg_blod[black]%}%_> %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[green]%}"

