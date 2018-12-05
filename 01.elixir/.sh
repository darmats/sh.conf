if [ -z $(command -v elixir) ]; then
  return
fi

if [ -d $HOME/.mix/escripts ] ; then
  export PATH=$HOME/.mix/escripts:$PATH
fi
