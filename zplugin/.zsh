# https://github.com/zdharma/zplugin#installation
if [ -z ${ZPLG_HOME} ]; then
  export ZPLG_HOME=${HOME}/.zplugin
fi
if [ ! -f ${ZPLG_HOME}/bin/zplugin.zsh ]; then
  return
fi

### Added by Zplugin's installer
source $ZPLG_HOME/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
if [ -f ${DIR}/plugin.zsh ]; then
  source ${DIR}/plugin.zsh
else
  echo "Notice: ${DIR}/plugin.zsh does not exist."
fi
