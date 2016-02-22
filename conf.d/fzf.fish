# Due to a bug of fish, we cannot use command substitution,
# so we use temporary file instead

if [ -z "$TMPDIR" ]
  set -g TMPDIR /tmp
end

bind \ct '__fzf_ctrl_t'
bind \cr '__fzf_ctrl_r'
bind \ec '__fzf_alt_c'

if bind -M insert > /dev/null 2>&1
  bind -M insert \ct '__fzf_ctrl_t'
  bind -M insert \cr '__fzf_ctrl_r'
  bind -M insert \ec '__fzf_alt_c'
end