if ! builtin command -v direnv > /dev/null; then
  return
fi

eval "$(direnv hook ${CNF_SHELL})"
source ${CNF_ROOT}/direnv/envrc.sh

alias dnv='direnv'
alias dnva='direnv allow'
