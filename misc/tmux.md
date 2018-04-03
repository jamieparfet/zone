# Tmux reference guide

### Sessions
Function     | Command
------------ | -------------
New Session | `tmux new -s <name>`
Detach Session | `tmux detach`<br>`[ctrl-b + d]`
Attach Session | `tmux a -t <name>`
Rename Session | `tmux rename <name>`<br>`[ctrl-b + $]`
Kill Session | `tmux kill-session -t <name>`

### Windows
Function     | Command
------------ | -------------
New Window | `tmux neww -n <name>`<br>`[ctrl-b + c]`
Change Window | `[ctrl-b + (0-9)`
Next Window<br>Prev Window | `[ctrl-b + n]`<br>`[ctrl-b + p]`
Rename Window | `tmux renamew <name>`<br>`[ctrl-b + ,]`
Kill Current Window<br>Kill Target Window| `tmux killw`<br>`tmux killw -t (<name> or #)`

### Panes
Function     | Command
------------ | -------------
Split Pane Horizontally | `[ctrl-b + %]`
Split Pane Vertically | `[ctrl-b + "]`
