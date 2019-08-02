if [ -z $GHQ_ROOT ]; then
  export GHQ_ROOT=${HOME}"/repos/src"
fi

if [ -n $(command -v fzf) ]; then
  alias ghqcd='cd ${GHQ_ROOT}/$(ghq list | fzf)'
fi
