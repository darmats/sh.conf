gitstatusd_prompt() {
  PROMPT=${PROMPT//\$\(git_status\)/\${_GITSTATUSD_PROMPT}}
  if gitstatus_query MY && [[ $VCS_STATUS_RESULT == ok-sync ]]; then
    local branch_prefix
    local where
    if [[ -n $VCS_STATUS_LOCAL_BRANCH ]]; then
      where=$VCS_STATUS_LOCAL_BRANCH
    elif [[ -n $VCS_STATUS_TAG ]]; then
      branch_prefix='#'
      where=$VCS_STATUS_TAG
    else
      branch_prefix=':'
      where=${VCS_STATUS_COMMIT[1,8]}
    fi
    local p="${ZSH_THEME_GIT_PROMPT_PREFIX}${branch_prefix}${ZSH_THEME_GIT_PROMPT_BRANCH}${where}%{${reset_color}%}"

    (( VCS_STATUS_COMMITS_BEHIND )) && p+="${ZSH_THEME_GIT_PROMPT_BEHIND}${VCS_STATUS_COMMITS_BEHIND}%{${reset_color}%}"
    (( VCS_STATUS_COMMITS_AHEAD  )) && p+="${ZSH_THEME_GIT_PROMPT_AHEAD}${VCS_STATUS_COMMITS_AHEAD}%{${reset_color}%}"
    p+="$ZSH_THEME_GIT_PROMPT_SEPARATOR"
    (( VCS_STATUS_NUM_STAGED     )) && p+="${ZSH_THEME_GIT_PROMPT_STAGED}${VCS_STATUS_NUM_STAGED}%{${reset_color}%}"
    (( VCS_STATUS_NUM_CONFLICTED )) && p+="${ZSH_THEME_GIT_PROMPT_CONFLICTS}${VCS_STATUS_NUM_CONFLICTED}%{${reset_color}%}"
    (( VCS_STATUS_NUM_UNSTAGED   )) && p+="${ZSH_THEME_GIT_PROMPT_CHANGED}${VCS_STATUS_NUM_UNSTAGED}%{${reset_color}%}"
    (( VCS_STATUS_NUM_UNTRACKED  )) && p+="${ZSH_THEME_GIT_PROMPT_UNTRACKED}${VCS_STATUS_NUM_UNTRACKED}%{${reset_color}%}"
    if [ "$VCS_STATUS_NUM_STAGED" = "0" ] && [ "$VCS_STATUS_NUM_UNSTAGED" = "0" ] && [ "$VCS_STATUS_NUM_CONFLICTED" = "0" ] && [ "$VCS_STATUS_NUM_UNTRACKED" = "0" ]; then
      p+="${ZSH_THEME_GIT_PROMPT_CLEAN}%{${reset_color}%}"
    fi

    p+="%{${reset_color}%}$ZSH_THEME_GIT_PROMPT_SUFFIX"
    _GITSTATUSD_PROMPT="$p"
  else
    _GITSTATUSD_PROMPT=""
  fi
}

if [ -n "${CONF_GITSTATUSD_ROOT}" ]; then
  source ${CONF_GITSTATUSD_ROOT}/gitstatus.plugin.zsh
else
  source ${GHQ_ROOT}/github.com/romkatv/gitstatus/gitstatus.plugin.zsh
fi

gitstatus_stop 'MY' && gitstatus_start -s -1 -u -1 -c -1 -d -1 'MY'
autoload -Uz add-zsh-hook
add-zsh-hook precmd gitstatusd_prompt
