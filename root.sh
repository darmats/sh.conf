CNF_OS=$(uname -s)
# CNF_ARCH=$(uname -m)

if [ -f ${CNF_ROOT}/secretrc.sh ] ; then
  source ${CNF_ROOT}/secretrc.sh
fi

source $CNF_ROOT/list.sh
for CNF_SH in $CNF_LIST; do
  f=${CNF_ROOT}/${CNF_SH}/.sh
  if [ -f $f ]; then
    source $f
    # echo $f
  fi
done

if [ -n $(command -v stty) ]; then
  stty stop undef
fi
