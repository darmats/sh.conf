ROOT=$(cd $(dirname $0); pwd)

if [ -f ${ROOT}/direnvrc.sh ] ; then
  source ${ROOT}/direnvrc.sh
fi

# for compatibility
if [ -f ${ROOT}/secretrc ] ; then
  source ${ROOT}/secretrc
fi
if [ -f ${ROOT}/secretrc.sh ] ; then
  source ${ROOT}/secretrc.sh
fi

alias ll='ls -lG'
alias ll.='ls -lGa'
alias llh='ls -lhG'
alias tlf='tail -f'
alias relogin='exec $SHELL -l'

export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
