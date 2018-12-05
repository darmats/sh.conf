if [ -z $(command -v direnv) ]; then
  return
fi

eval "$(direnv hook ${CNF_SHELL})"
source ${CNF_ROOT}/01.direnv/envrc.sh

alias dnv='direnv'
alias dnva='direnv allow'
