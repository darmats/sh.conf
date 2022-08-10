if [ -f ${CNF_ROOT}/secretrc.sh ] ; then
  source ${CNF_ROOT}/secretrc.sh
fi

if [ -z ${HOMEBREW_PREFIX} ]; then
  if [ -n $(command -v brew) ]; then
    HOMEBREW_PREFIX="$(brew --prefix)"
  fi
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
