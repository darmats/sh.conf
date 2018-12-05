if [ -z $(command -v composer) ]; then
  return
fi

export PATH=$PATH:~/.composer/vendor/bin
