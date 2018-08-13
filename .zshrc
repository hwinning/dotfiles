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

# use nvim
alias vvim="vim"
alias vim="nvim"

# ls aliases
alias la='ls -a'
alias ll='ls -l'

if [[ ! "$TMUX" ]] ; then
  tmux attach -t workspace || tmux new-session -A -s workspace
fi
