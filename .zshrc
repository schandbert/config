autoload -Uz compinit && compinit

source <(antibody init)
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
antibody bundle robbyrussell/oh-my-zsh

antibody bundle < ~/.zsh_plugins
if [[ $OSTYPE == "darwin"* ]]; then
  # for some reason this is needed to load the docker plugin on MacOS
  fpath+=$(antibody path robbyrussell/oh-my-zsh)/plugins/docker
  autoload -Uz compinit && compinit
fi


HISTSIZE=1000000
SAVEHIST=$HISTSIZE

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
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

# jsonschema validation
alias justify=~/dev/bin/justify-cli/justify

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf --no-sort --tac --height=50% | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

# translate
alias ted='trans -s en -t de'
alias tde='trans -s de -t en'

# ripgrep multiline with dot-all semantics enabled
alias rgm='rg --multiline --multiline-dotall'

# Termux proot archlinux
alias proot-run="proot-distro login archlinux --termux-home --"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=~/.sdkman
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && source $SDKMAN_DIR/bin/sdkman-init.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/schandbert/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/schandbert/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/schandbert/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/schandbert/bin/google-cloud-sdk/completion.zsh.inc'; fi
