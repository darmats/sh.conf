if [ -z $(command -v ghq) ]; then
  return
fi

if [ -z $GHQ_ROOT ]; then
  export GHQ_ROOT=$GOPATH
fi
