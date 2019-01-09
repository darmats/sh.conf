if not test (command -v direnv)
  exit
end

eval (direnv hook fish)

alias dnv='direnv'
alias dnva='direnv allow'
