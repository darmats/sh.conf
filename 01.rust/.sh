if [ ! -d $HOME/.cargo/bin ] ; then
  return
fi

export PATH="$HOME/.cargo/bin:$PATH"
