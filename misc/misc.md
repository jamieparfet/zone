## tcpdump

#### Ping
`tcpdump -i eth0 -s0 src net x.x.x.x and icmp -v`<br>
`ping -c 4 10.0.0.1`

#### HTTP
`tcpdump -i eth0 -s0 src net x.x.x.x and port 80 -v`<br>
`curl 10.0.0.1`