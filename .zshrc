source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle docker
antigen bundle git
antigen bundle gradle
antigen bundle httpie
antigen bundle mvn
antigen bundle pip
antigen bundle python
antigen bundle systemd
#antigen bundle tmux
#ZSH_TMUX_AUTOSTART=false
antigen bundle vagrant
antigen bundle vi-mode
antigen bundle web-search

# suggestions
antigen bundle zsh-users/zsh-autosuggestions
# auto suggest with shift+tab
bindkey '^[[Z'  autosuggest-accept

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# time for long running commands
antigen bundle popstas/zsh-command-time
# reminder for configured aliasses
antigen bundle MichaelAquilina/zsh-you-should-use

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Fish-like auto suggestions
# antigen bundle zsh-users/zsh-autosuggestions
#
# Extra zsh completions
antigen bundle zsh-users/zsh-completions

# Load the theme.
#antigen theme robbyrussell
antigen theme ys

# Tell Antigen that you're done.
antigen apply

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nvim

PATH=~/bin:$PATH

# repair Meta-.
bindkey '\e.' insert-last-word
# special git for dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.mycfg/ --work-tree=$HOME'
# nicer ls
alias ls='ls --color -h --group-directories-first'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=~/.sdkman
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && source $SDKMAN_DIR/bin/sdkman-init.sh
