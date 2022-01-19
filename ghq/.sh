if [ -z $GHQ_ROOT ]; then
  export GHQ_ROOT=${HOME}"/repos/src"
fi

if [ -n $(command -v fzf) ]; then
  function cdsrc() {
    if [ $# -eq 0 ]; then
      echo "Usage: cdsrc [pattern]"
      return 1
    else
      cd ${GHQ_ROOT}/$(ghq list | grep $1 | fzf)
    fi
  }
  alias cdsrca='cd ${GHQ_ROOT}/$(ghq list | fzf)'
fi
