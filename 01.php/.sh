if [ -d ${HOME}/.composer/vendor/bin ] ; then
  export PATH=$PATH:${HOME}/.composer/vendor/bin
elif [ -d ${HOME}/.config/composer/vendor/bin ] ; then
  export PATH=$PATH:${HOME}/.config/composer/vendor/bin
fi
