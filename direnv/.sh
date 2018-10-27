command_exists 'direnv'
if [ $? -ne 0 ]; then
  return
fi

eval "$(direnv hook ${CNF_SHELL})"
source ${CNF_ROOT}/direnv/envrc.sh

alias dnv='direnv'
alias dnva='direnv allow'
