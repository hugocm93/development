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
    xterm-color|*-256color) color_prompt=yes;;
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
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

#Personal
export LD_LIBRARY_PATH=/usr/local/lib

#vars
WORK="/local/hmachado/"
V3O2_PATH=$WORK"v3o2"
export MODE="release" #debug ou release ou gdb ou unit_tests

#Programs
alias ctags='$WORK/bin/ctags-5.8/ctags'
alias val='$WORK/bin/val.sh'
alias all='$WORK/bin/all.sh'
alias vimDiff='git diff | vim -R -'
alias editCurrent='vim `git diff --name-only --diff-filter=M | xargs`'
alias patchMe='patch -p0 < ../../hack.patch'
alias sconsify='~/bin/sconsify/sconsify -username="12163089012" -open-browser-cmd firefox'
alias bb='~/bin/boost_build/bin/b2 -j8 -sBOOST_ROOT=/local/hmachado/bin/boost_build/'
alias tyrian='~/bin/opentyrian/opentyrian -t ~/bin/opentyrian/tyrian21/'
alias telegram='~/bin/tg/bin/telegram-cli -N'
alias glade='/home/p/libs/libsgtk_64/bin/glade-3'
alias cmatrix='~/Desktop/cmatrix/cmatrix'

#Directories
alias gov3o2='cd $V3O2_PATH'
alias gotest='cd $V3O2_PATH/test'
alias gosource='cd $V3O2_PATH/src'
alias gobuild='cd $V3O2_PATH/build'
alias check='echo $MODE ; ls -la $WORK/v3o2'

alias fast='$V3O2_PATH/build/make.sh $MODE'
alias quick='$V3O2_PATH/build/make.sh $MODE -j14'

alias gencmake='$V3O2_PATH/build/gen_cmake.sh local ; $V3O2_PATH/build/make.sh $MODE'
alias execute='vglrun $V3O2_PATH/build/v3o2.sh $MODE'
alias debug='export MODE="debug" ; check'
alias release='export MODE="release" ; check'
alias gdbMode='export MODE="gdb" ; check'
alias eight='scl enable devtoolset-8 bash'


alias CTAGS='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ .'
alias genTags='cd $V3O2_PATH/src ; CTAGS ;
               cd $V3O2_PATH/lib ; CTAGS ;
               cd $V3O2_PATH/prototipos/DiametrosEstruturasSegmentadas/ ; CTAGS ;
               cd $V3O2_PATH/dependencies ; CTAGS ;
               cd $V3O2_PATH/ ; echo Done'
alias run='fast ; execute'

#v3o2 symbolic links
alias repo1='ln -sfn ~/v3o2_folders/repo1/v3o2         ~/v3o2 ; check'
alias repo2='ln -sfn ~/v3o2_folders/repo2/v3o2         ~/v3o2 ; check'

#Adding some programs to the path
export LD_LIBRARY_PATH
export CPATH
export MANPATH
source $WORK/bin/tools/tools.sh $WORK/bin/tools/vim-8.1
export SVN_EDITOR=vim

export LD_LIBRARY_PATH=/nethome/p/INT/CarnacGeo-44_/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=~/v3o2/dependencies/ext/qt_Linux64e6/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/local/hmachado/bin/sconsify:$LD_LIBRARY_PATH

#Grep Settings
export GREP_OPTIONS="--exclude=*.svn-base --exclude=*.netbeans-base --exclude=*.tmp --exclude=*/.svn/* --exclude=tags"
alias grep='grep --color=auto'

# Default key repetition
xset r rate

cd ~ 
