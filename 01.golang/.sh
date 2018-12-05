if [ -z $(command -v go) ]; then
  return
fi

if [ -z $GOPATH ]; then
  export GOPATH=$HOME/repos
fi
export PATH=$GOPATH/bin:$PATH
