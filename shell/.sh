case ${CNF_OS} in
  'Darwin' )
    alias ll='ls -lG'
    alias l='ll'
    alias la='ls -lGa'
    alias lh='ls -lhG'
    alias tlf='tail -f'
    alias relogin="exec $(which ${CNF_SHELL}) -l"
    ;;
  'Linux' )
    alias cp='cp -i'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l.='ls -d .* --color=auto'
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias l='ll'
    alias la='ls -la --color=auto'
    alias lh='ls -lha --color=auto'
    alias mv='mv -i'
    alias rm='rm -i'
    ;;
  * )
    echo "Unexpected \${CNF_OS}: ${CNF_OS}"
    ;;
esac

export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
