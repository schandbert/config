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
#antigen bundle tmux
#ZSH_TMUX_AUTOSTART=false
antigen bundle vi-mode

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
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
# special git for dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.mycfg/ --work-tree=$HOME'
# nicer ls
alias ls='ls --color -h --group-directories-first'
