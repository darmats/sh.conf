if [ -z $ZPLUG_HOME ]; then
  if [ -f ${HOME}/.zplug/init.zsh ]; then
    export ZPLUG_HOME=${HOME}/.zplug
  elif [ -f /usr/local/opt/zplug/init.zsh ]; then
    export ZPLUG_HOME=/usr/local/opt/zplug
  fi
fi
if [ -z $ZPLUG_HOME ]; then
  return
fi

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi
zplug load --verbose
