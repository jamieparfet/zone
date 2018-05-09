# Bash reference guide

## General
Function     | Command
------------ | -------------
Remove duplicate lines inside a text file | `awk '!seen[$0]++' filename`
Find lines ONLY in file2 (sorted) | `comm -13 file1 file2`
Find lines ONLY in file2 (unsorted) | `comm -13 <(sort file1.txt) <(sort file2.txt)`
Ping each host once and only show replies (10.0.0.1/24)| `for i in {1..254}; do ping -c 1 -W 1 10.0.0.$i \| grep 'from'; done`
Perform DNS lookup on each hostname in file | `while read hostname; do host "$hostname"; done < hosts.txt`

### IP addresses
Function     | Command
------------ | -------------
Get IP address (Linux) | `hostname -I`
Get IP address of eth0 (Ubuntu) | `ifconfig eth0 \| grep 'inet addr' \| cut -d: -f2 \| awk '{print $1}'`<br>`ip -4 addr show eth0 \| grep -oP '(?<=inet\s)\d+(\.\d+){3}'`
Get IP address of eth0 (Debian/OS X) | `ifconfig eth0 \| grep 'inet ' \| awk '{print $2}'`
Get IP address of en0 (OS X) | `ipconfig getifaddr en0`
Get external IP | `curl icanhazip.com`<br>`curl checkip.amazonaws.com`<br>`curl eth0.me`<br>`dig +short myip.opendns.com @resolver1.opendns.com`


### find
Function     | Command
------------ | -------------
World-writable folders | `find / -writable -type d 2>/dev/null`
World-writable files | `find / -writable -type f 2>/dev/null`
Exclude /proc/ and /sys/ | `egrep -v "/proc/\|/sys/"`
