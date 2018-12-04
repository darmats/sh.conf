# PROMPT=$'%m:%F{cyan}%n%f %F{yellow}%c%f %% '
PROMPT=$'%{$fg_bold[green]%}%n@%m%{\e[0m%}:%{$fg_bold[blue]%}%~%{\e[0m%}$ '

alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
    alias -g @p=' | peco'
fi
alias -g @x=' | xargs'
