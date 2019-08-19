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
_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
if [ -f ${_DIR}/plugin.zsh ]; then
  source ${_DIR}/plugin.zsh
else
  echo "Notice: ${_DIR}/plugin.zsh does not exist."
fi
unset _DIR
