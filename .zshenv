export PATH=~/dev/bin:$PATH
export PATH=~/bin:$PATH

if [[ $OSTYPE == "darwin"* ]]; then
  export BROWSER=/usr/local/bin/firefox
  export EDITOR=/usr/local/bin/nvim
  export PATH=/usr/local/sbin:$PATH
  # may be needed for tcpdump
  # export PATH=/usr/local/opt/libpcap/bin:$PATH
else
  export BROWSER=/usr/bin/firefox
  export EDITOR=/usr/bin/nvim
  export ZSH_CACHE_DIR=/tmp
fi

export JBOSS_HOME=~/dev/bin/wildfly-18.0.1.Final/
export JBOSS_HOME_WF10=~/dev/bin/wildfly-10.1.0.Final/
