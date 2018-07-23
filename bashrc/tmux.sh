if [ -t 0 ] && [ -z "$TMUX" ] && which tmux >/dev/null 2>&1; then
  sess=$(tmux list-sessions -F '#{?session_attached,,#{session_name}}' 2>/dev/null |grep -v '^$' | head -1)
  if [ -n "$sess" ]; then
    tmux -2 attach-session -t $sess
  else
    tmux -2 new-session
  fi
fi
