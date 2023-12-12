    /bin/bash

tmux \
  new-session 'cd /minning/minerstat-os/; node --max-old-space-size=384 start' \; \
  resize-pane -U 5 \; \
  send-keys C-a M-3 \;
