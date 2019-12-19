[[ $- != *i* ]] && return

unset HISTFILE

export PATH=\
$HOME/bin:\
$HOME/go/bin:\
$HOME/.cargo/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/usr/sbin:\
/usr/bin:\
/snap/bin:\
/sbin:\
/bin

set -o notify
set -o noclobber
set -o ignoreeof
set bell-style none
set +h
set -o vi
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s globstar

for t in aliases functions colors private; do
  [[ -f ~/.bash_$t ]] && . ~/.bash_$t
done

[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

complete -cf sudo

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;36m\]\u\[\033[01;32m\]@\[\033[01;33m\]]\h:\[\033[00m\] '
else
  PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
fi

[[ $(which vim) ]] && alias vi=vim
export EDITOR=vi
export VISUAL=vi
