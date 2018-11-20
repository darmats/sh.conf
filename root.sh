CNF_OS=$(uname -s)
# CNF_ARCH=$(uname -m)

# for compatibility
if [ -f ${CNF_ROOT}/secretrc ] ; then
  source ${CNF_ROOT}/secretrc
fi
if [ -f ${CNF_ROOT}/secretrc.sh ] ; then
  source ${CNF_ROOT}/secretrc.sh
fi

for file in `\find ${CNF_ROOT} -type f -name .sh | sort`; do
  source $file
  # echo $file
done
