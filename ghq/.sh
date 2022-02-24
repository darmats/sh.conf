if [ -z $GHQ_ROOT ]; then
  export GHQ_ROOT=${HOME}"/repos/src"
fi

if [ -n $(command -v fzf) ]; then
  function repo() {
    if [ $# -eq 0 ]; then
      echo "Usage: $0 [pattern]"
      return 1
    else
      cd ${GHQ_ROOT}/$(ghq list | grep $1 | fzf)
    fi
  }
  alias repo-all='cd ${GHQ_ROOT}/$(ghq list | fzf)'
fi
