CNF_SHELL='bash'

if [ -z $CNF_ROOT ]; then
  CNF_ROOT=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
fi

source ${CNF_ROOT}/root.sh

export HISTCONTROL=ignoreboth
export HISTIGNORE="fg*:bg*:history*"

source $CNF_ROOT/list.sh
for CNF_SH in $CNF_LIST; do
  f=${CNF_ROOT}/${CNF_SH}/.bash
  if [ -f $f ]; then
    source $f
    # echo $f
  fi
done
