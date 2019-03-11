if [ -z $(command -v ${HOME}/.nodebrew/current/bin/node) ]; then
  return
fi

export PATH=${HOME}/.nodebrew/current/bin:${PATH}
