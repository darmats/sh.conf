case "${OSTYPE}" in
  darwin* )
    alias l='ls -1G'
    alias ls='ls -G'
    alias ll='ls -lG'
    alias la='ls -lGa'
    alias lh='ls -lhG'
    alias tlf='tail -f'
    alias relogin="exec $(which ${CNF_SHELL}) -l"
    alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
    ;;
  linux* )
    alias cp='cp -i'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l='ls -1 --color=auto'
    alias l.='ls -d .* --color=auto'
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ls -la --color=auto'
    alias lh='ls -lha --color=auto'
    alias mv='mv -i'
    alias rm='rm -i'
    ;;
  * )
    echo "Unexpected \${OSTYPE}: ${OSTYPE}"
    ;;
esac

alias lns='ln -s'
function mdr() {
  mkdir -p "$@" && cd "$@"
}

export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
