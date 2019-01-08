if not test (command -v git)
  exit
end
if not test (command -v gitstatus)
  exit
end

set GIT_PROMPT_RESET (set_color normal)
set GIT_PROMPT_PREFIX '['
set GIT_PROMPT_SUFFIX ']'
set GIT_PROMPT_SEPARATOR '|'
set GIT_PROMPT_BRANCH (set_color red)
set GIT_PROMPT_STAGED (set_color green)
set GIT_PROMPT_CONFLICTS (set_color magenta)'x'
set GIT_PROMPT_CHANGED (set_color red)'+'
set GIT_PROMPT_BEHIND (set_color green)'↘'
set GIT_PROMPT_AHEAD (set_color green)'↗'
set GIT_PROMPT_UNTRACKED '…'
set GIT_PROMPT_CLEAN (set_color green)'✔'

function git_status
  set current (string split ' ' (gitstatus))
  if test -z "$current"
    return
  end

  set git_branch $current[1]
  set git_ahead $current[2]
  set git_behind $current[3]
  set git_staged $current[4]
  set git_conflicts $current[5]
  set git_changed $current[6]
  set git_untracked $current[7]

  set st {$GIT_PROMPT_PREFIX}{$GIT_PROMPT_BRANCH}{$git_branch}{$GIT_PROMPT_RESET}
  if test "$git_behind" -ne "0"
    set st {$st}{$GIT_PROMPT_BEHIND}{$git_behind}{$GIT_PROMPT_RESET}
  end
  if test "$git_ahead" -ne "0"
    set st {$st}{$GIT_PROMPT_AHEAD}{$git_ahead}{$GIT_PROMPT_RESET}
  end
  set st {$st}{$GIT_PROMPT_SEPARATOR}
  if test "$git_staged" -ne "0"
    set st {$st}{$GIT_PROMPT_STAGED}{$git_staged}{$GIT_PROMPT_RESET}
  end
  if test "$git_conflicts" -ne "0"
    set st {$st}{$GIT_PROMPT_CONFLICTS}{$git_conflicts}{$GIT_PROMPT_RESET}
  end
  if test "$git_changed" -ne "0"
    set st {$st}{$GIT_PROMPT_CHANGED}{$git_changed}{$GIT_PROMPT_RESET}
  end
  if test "$git_untracked" -ne "0"
    set st {$st}{$GIT_PROMPT_UNTRACKED}{$git_untracked}{$GIT_PROMPT_RESET}
  end
  if test "$git_changed" -ne "0"; and test "$git_conflicts" -ne "0"; and test "$git_staged" -ne "0"; and test "$git_untracked" -ne "0"
    set st {$st}{$GIT_PROMPT_CLEAN}
  end

  set st {$st}{$GIT_PROMPT_SUFFIX}

  printf ' %s' $st
end
