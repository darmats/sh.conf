PROMPT=$'%m:%F{cyan}%n%f %F{yellow}%c%f %% '

alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
    alias -g @p=' | peco'
fi
alias -g @x=' | xargs'
