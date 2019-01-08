function git_status
end

function fish_prompt
  printf '%s@%s %s%s> ' $USER (prompt_hostname) (set_color green)(prompt_pwd)(set_color normal) (git_status)
end
