if [ -z $(command -v direnv) ]; then
  return
fi

eval "$(direnv hook ${CNF_SHELL})"

alias dnv='direnv'
alias dnva='direnv allow'
