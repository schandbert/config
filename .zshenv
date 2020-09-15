export PATH=~/dev/bin:$PATH
export PATH=~/bin:$PATH

if [[ $OSTYPE == "darwin"* ]]; then
  export BROWSER=/usr/local/bin/firefox
  export EDITOR=/usr/local/bin/nvim
else
  export BROWSER=/usr/bin/firefox
  export EDITOR=/usr/bin/nvim
  export ZSH_CACHE_DIR=/tmp
fi

echo sourced .zshenv
