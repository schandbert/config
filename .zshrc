# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < ~/.zsh_plugins

## Load the oh-my-zsh's library.
#antigen use oh-my-zsh
#
## Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle docker
#antigen bundle git
#antigen bundle gradle
#antigen bundle httpie
#antigen bundle mvn
#antigen bundle pip
#antigen bundle python
#antigen bundle systemd
##antigen bundle tmux
##ZSH_TMUX_AUTOSTART=false
#antigen bundle vagrant
#antigen bundle vi-mode
#antigen bundle web-search
#
## suggestions
#antigen bundle zsh-users/zsh-autosuggestions
# auto suggest with shift+tab
bindkey '^[[Z'  autosuggest-accept
#
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
#
# repair Meta-.
bindkey '\e.' insert-last-word
# special git for dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.mycfg/ --work-tree=$HOME'

# nicer ls
if [[ $OSTYPE == "darwin"* ]]; then
else
    alias ls='ls --color -h --group-directories-first'
fi

# open DSA book
alias dsab='find ~/Documents/Bücher/DSA -name "*pdf" | fzf | xargs -i xdg-open {}'

# fuzzy seach in history
alias h='history | fzf --tac --no-sort'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=~/.sdkman
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && source $SDKMAN_DIR/bin/sdkman-init.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
