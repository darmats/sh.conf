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
if [ ! -f $ZPLUG_HOME/init.zsh ]; then
  return
fi

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions"
zplug "b4b4r07/enhancd", use:"init.sh"
zplug "rupa/z", use:"z.sh"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi
zplug load --verbose
