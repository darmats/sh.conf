function aws_session_config() {
  if [ $# -ne 0 ]; then
    export _CONF_AWS_SESSION_CONFIG=$@
  fi
  echo $_CONF_AWS_SESSION_CONFIG
}

function aws_session_unset() {
  unset _CONF_AWS_SESSION_CONFIG
}

function aws() {
  command aws $(echo $_CONF_AWS_SESSION_CONFIG) $@
}
