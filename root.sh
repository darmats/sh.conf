CNF_OS=$(uname -s)
# CNF_ARCH=$(uname -m)

# for compatibility
if [ -f ${CNF_ROOT}/secretrc ] ; then
  source ${CNF_ROOT}/secretrc
fi
if [ -f ${CNF_ROOT}/secretrc.sh ] ; then
  source ${CNF_ROOT}/secretrc.sh
fi

alias ll='ls -lG'
alias ll.='ls -lGa'
alias llh='ls -lhG'
alias tlf='tail -f'
alias relogin='exec $SHELL -l'

export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

for file in `\find ${CNF_ROOT} -type f -name .sh`; do
    source $file
    # echo $file
done
