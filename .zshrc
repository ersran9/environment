# The following lines were added by compinstall
zstyle :compinstall filename '/home/sreenidhi/.zshrc'
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

autoload -Uz compinit
autoload -Uz colors && colors
compinit

function prompt_info {
    ## git branch >/dev/null 2>/dev/null && git_info && return
    ## darcs whatsnew >/dev/null 2>/dev/null && darcs_info && return
    echo '$'
}

function darcs_info {
    echo '[git]'
}

function git_info {
    echo '[darcs]'
}

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

prompt_extra='$(prompt_info)'

export LC_CTYPE=en_US.UTF-8
# End of lines configured by zsh-newuser-install
PROMPT="%{$fg[white]%}%B%n@%m%b:%{$reset_color%}%{$fg[blue]%}%B%~%b%{$reset_color%} %{$prompt_extra%} "
## RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

setopt prompt_subst
PATH=/home/sreenidhi/.local/bin:$PATH
alias beast='ssh sreenidhi@10.42.0.19 -X'
