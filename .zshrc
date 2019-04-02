PATH=$PATH:~/.local/bin
#
# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
export PS1="%n%f@%m%F{cyan} %c%f $ "

# ls aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'

alias xclip='xclip -selection clipboard'

# fix delete
bindkey "^[[3~" delete-char

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/heath/google-cloud-sdk/path.zsh.inc' ]; then . '/home/heath/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/heath/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/heath/google-cloud-sdk/completion.zsh.inc'; fi

# pyenv
export PATH="/home/heath/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
