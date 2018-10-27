CNF_SHELL='sh'

if [ -z $CNF_ROOT ]; then
  echo 'Env ${CNF_ROOT} is not set'
  return
fi

source ${CNF_ROOT}/root.sh
