# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Colors
# Use the second PS1 line if you want to display the hostname.
# The variables "at_color" and "host_color" go along with that

if [ "$color_prompt" = yes ]; then
    user_color=27
    #at_color=37
    #host_color=27
    div_color=51
    dir_color=39
    sign_color=51
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;38;5;${user_color}m\]\u\[\033[01;38;5;${div_color}m\]:\[\033[38;5;${dir_color}m\]\w\[\033[01;38;5;${sign_color}m\]\$\[\033[00m\] '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;38;5;${user_color}m\]\u\[\033[01;38;5;${at_color}m\]@\[\033[01;38;5;${host_color}m\]\h\[\033[01;38;5;${col_color}m\]:\[\033[38;5;${dir_color}m\]\w\[\033[01;38;5;${sign_color}m\]\$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

###################
####  Aliases  ####
###################
# ls
alias ll='ls -lAF --color=auto'
alias la='ls -A'
alias l='ls -CF'

# other
alias c='clear'

# Python simple HTTP server with wget output for easy copy and paste
pyserv() { find . -maxdepth 1 -type f -printf "wget $(hostname -I | awk '{print $1}'):"$1"/%f\n"; python -m SimpleHTTPServer "$1"; }


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
