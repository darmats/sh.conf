if [ -z $ZPLUG_HOME ]; then
  export ZPLUG_HOME=/usr/local/opt/zplug
fi

if [ -f $ZPLUG_HOME/init.zsh ]; then
  source $ZPLUG_HOME/init.zsh
fi
