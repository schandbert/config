if [[ $OSTYPE == "darwin"* ]]; then
  PATH=~/dev/bin:$PATH
  BROWSER=/usr/bin/firefox
  EDITOR=/usr/bin/nvim
else
  PATH=~/bin:$PATH
  BROWSER=/usr/local/bin/firefox
  EDITOR=/usr/local/bin/nvim
fi
echo sourced .zshenv
