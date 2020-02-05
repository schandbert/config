export PATH=~/dev/bin:$PATH

if [[ $OSTYPE == "darwin"* ]]; then
  export BROWSER=/usr/local/bin/firefox
  export EDITOR=/usr/local/bin/nvim
else
  export BROWSER=/usr/bin/firefox
  export EDITOR=/usr/bin/nvim
fi

echo sourced .zshenv
