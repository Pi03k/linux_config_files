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
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
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
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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

set -o vi
export EDITOR=nvim
#export VIMRUNTIME=~/.vim/
export NVIM_PYTHON_LOG_FILE=~/.vim.log

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH=~/bin:${PATH}
export XDG_CONFIG_HOME=$HOME/.config
export DOCKER_OPTS="--insecure-registry 172.29.8.75:5000 --dns 172.29.8.5 --dns 172.29.8.7"
export M="/home/user/workspace/m3_demo/src/maxwell/"
export TERMINAL="/usr/bin/terminator"

alias dif='cdiff -w 0'

alias lvim='vim -c "normal '\''0"'

setxkbmap pl

export LIBGL_DRIVER_PATH=/usr/lib32/fglrx/
export LIBGL_DRIVERS_PATH=/usr/lib32/fglrx/
export LIBGL_DEBUG=verbose
export CMAKE_MODULE_PATH=/usr/share/cmake-2.8/Modules/
export GTEST_ROOT=/home/pi03k/workspace/googletest-read-only
#export PATH=/usr/lib/ccache/bin/:${PATH}:/opt/omnetpp-4.2.2/bin:~/bin/
export PATH=${PATH}:/opt/omnetpp-4.2.2/bin:~/bin/
export CPLUS_INCLUDE_PATH=${CPLUS_INCLUDE_PATH}:/opt/omnetpp-4.2.2/include/
export C_INCLUDE_PATH=${C_INCLUDE_PATH}:/opt/omnetpp-4.2.2/include/
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/omnetpp-4.2.2/lib/gcc
export EDITOR=nvim
export CXXFLAGS='-march=corei7 -mtune=corei7'
export CFLAGS=${CXXFLAGS}
export BOOST_INCLUDEDIR=/usr/include/
export BOOST_LIBRARYDIR=/usr/lib/
export BOOST_ROOT=/usr/
export PULSE_LATENCY_MSEC=60
export XDG_MUSIC_DIR=~/Muzyka/
#export CCACHE_DIR=/tmp/ccache

alias mejk='make -j `_ncpus` |& tee build.log'
alias Make='make VERBOSE=1 -j `_ncpus` 2>make.err ; cscope -Rvbq -s /usr/include/ -s /usr/local/include/ ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./*' &>make.err
alias ptags="ctags --tag-relative=yes --exclude=.svn --exclude=.git --links=no -R --language-force=Python --sort=yes --fields=fKSazt --extra=+fq --file-scope=yes --python-kinds=-i"
alias pscope="find . -name '*.py' > cscope.files && cscope -CURbqv"
alias egrep='egrep -R --color -n --exclude-dir=.svn --exclude-dir=.git'
alias ggrep='egrep --include=*.hxx --include=*.cxx --include=*.cpp --include=*.c --include=*.h --include=*.hpp -R --color -n'
alias go='git checkout'
