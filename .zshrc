# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="afowler"
#ZSH_THEME="agnoster"
ZSH_THEME="crcandy"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

export PATH="/home/user/.gem/ruby/2.3.0/bin/:/home/user/bin/:$PATH"
export UI="/home/user/workspace/m3/maxwell/maxwell/phoneUI/DisplayGui/"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='/usr/bin/nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
#alias dif='cdiff -w 0'
alias lvim='vim -c "normal '\''0"'
#alias mejk='make -j `_ncpus` |& tee build.log'
alias mejk='make -j 10 |& tee build.log'
alias Make='make VERBOSE=1 -j `_ncpus` 2>make.err ; cscope -Rvbq -s /usr/include/ -s /usr/local/include/ ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./* &>make.err'
alias ptags="ctags --tag-relative=yes --exclude=.svn --exclude=.git --links=no -R --language-force=Python --sort=yes --fields=fKSazt --extra=+fq --file-scope=yes --python-kinds=-i"
alias pscope="find . -name '*.py' > cscope.files && cscope -CURbqv"
alias egrep='egrep -R --color -n --exclude-dir=.svn --exclude-dir=.git'
#alias ggrep="egrep --include='*.hxx" --include=*.cxx --include=*.cpp --include=*.c --include=*.h --include=*.hpp -R --color -n"
alias ggrep="egrep --include='*.hxx' --include='*.cxx' --include='*.cpp' --include='*.c' --include='*.h' --include='*.hpp' -R --color -n -ie"
alias go='git checkout'
alias klin='find ./ -type d -name build -exec rm -rvf {} +'
alias qb='LIBGL_ALWAYS_SOFTWARE=1 qutebrowser'
alias tmux="tmux -2"

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

#. /usr/share/fzf/key-bindings.zsh
#. /usr/share/fzf/completion.zsh

. ~/.fzf/shell/key-bindings.zsh
. ~/.fzf/shell/completion.zsh

#. /usr/lib/ruby/gems/2.4.0/gems/tmuxinator-0.9.0/completion/tmuxinator.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

unsetopt correct_all
