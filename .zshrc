# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="mh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode archlinux systemd)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

export EDITOR='/usr/bin/nvim'

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

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias mejk='make -j $(python3 -c "import multiprocessing as mp; print(int(mp.cpu_count() * 1.5))") |& tee build.log'
alias Make='make VERBOSE=1 -j `_ncpus` 2>make.err ; cscope -Rvbq -s /usr/include/ -s /usr/local/include/ ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./* &>make.err'
alias ptags="ctags --tag-relative=yes --exclude=.svn --exclude=.git --links=no -R --language-force=Python --sort=yes --fields=fKSazt --extra=+fq --file-scope=yes --python-kinds=-i"
alias pscope="find . -name '*.py' > cscope.files && cscope -CURbqv"
alias egrep='egrep -R --color -n --exclude-dir=.svn --exclude-dir=.git'
alias ggrep="egrep --include='*.hxx' --include='*.cxx' --include='*.cpp' --include='*.c' --include='*.h' --include='*.hpp' -R --color -n -ie"
alias klin='find ./ -type d -name build -exec rm -rvf {} +'
alias qb='LIBGL_ALWAYS_SOFTWARE=1 qutebrowser'
alias tmux="tmux -2"
alias p3='python3'
alias gstu='git status -uno'

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

export PATH="/home/user/.gem/ruby/2.3.0/bin/:/home/user/bin/:$PATH"
export UI="/home/user/workspace/m3/maxwell/maxwell/phoneUI/DisplayGui/"

#. /usr/lib/ruby/gems/2.4.0/gems/tmuxinator-0.9.0/completion/tmuxinator.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.fzf/shell/key-bindings.zsh
. ~/.fzf/shell/completion.zsh

unsetopt correct_all
