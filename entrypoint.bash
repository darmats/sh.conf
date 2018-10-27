CNF_SHELL='bash'

if [ -z $CNF_ROOT ]; then
  CNF_ROOT=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
fi

source ${CNF_ROOT}/root.sh

export HISTCONTROL=ignoreboth
export HISTIGNORE="fg*:bg*:history*"

for file in `\find ${CNF_ROOT} -type f -name .bash | sort`; do
  source $file
  # echo $file
done
