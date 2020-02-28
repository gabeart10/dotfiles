[[ $- != *i* ]] && return

[ -z "$OS" ] && OS=`uname`
case "$OS" in
    *indows* )        PLATFORM=windows ;;
    Linux )           PLATFORM=linux ;;
    FreeBSD|Darwin )  PLATFORM=mac ;;
esac
export PLATFORM OS

unset HISTFILE

export PATH=\
$HOME/bin:\
$HOME/go/bin:\
$HOME/.cargo/bin:\
/usr/local/Cellar/python/3.7.5/Frameworks/Python.framework/Versions/3.7/bin:\
/usr/local/go/bin:\
/usr/local/tinygo/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/usr/sbin:\
/usr/bin:\
/snap/bin:\
/sbin:\
/bin

HISTCONTROL=ignoredups:ignorespace
set -o vi
set -o notify
set -o noclobber
set -o ignoreeof
set bell-style none
shopt -s checkwinsize
shopt -s histappend
shopt -s expand_aliases

[[ $PLATFORM != mac ]] && shopt -s globstar

for t in aliases functions colors private; do
  [[ -f ~/.bash_$t ]] && . ~/.bash_$t
done

[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

complete -cf sudo

export PS1="\[\033[38;5;248m\]\u\[$(tput sgr0)\]\[\033[38;5;244m\]@\h:\[$(tput sgr0)\]\[\033[38;5;160m\]\W\[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

[[ $(which vim) ]] && alias vi=vim
export EDITOR=vi
export VISUAL=vi

if [ $PLATFORM != 'mac' ]; then
  alias ls='ls -h --color'
else
  export CLICOLOR=1
  export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

if [ -x /usr/bin/dircolors ]; then
  if [ -r ~/.dircolors ]; then
    eval "$(dircolors -b ~/.dircolors)"
  else
    eval "$(dircolors -b)"
  fi
fi

if [ $PLATFORM == mac ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

export LESS_TERMCAP_mb=$(sol m)
export LESS_TERMCAP_md=$(sol y)
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$(sol b)
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$(sol v)
