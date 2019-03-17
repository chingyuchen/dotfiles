if [ -t 0 ] && [ -z "$TMUX" ] && which agenttmux >/dev/null 2>&1; then
  sess=$(agenttmux list-sessions -F '#{?session_attached,,#{session_name}}' 2>/dev/null |grep -v '^$' | head -1)
  if [ -n "$sess" ]; then
    agenttmux -2 attach-session -t $sess
  else
    agenttmux -2 new-session
  fi
fi
