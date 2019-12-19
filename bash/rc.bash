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

for t in aliases functions colors private; do
  [[ -f ~/.bash_$t ]] && . ~/.bash_$t
done

[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

complete -cf sudo

export PS1="\[\033[38;5;248m\]\u\[$(tput sgr0)\]\[\033[38;5;244m\]@\h:\[$(tput sgr0)\]\[\033[38;5;160m\]\W\[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

[[ $(which vim) ]] && alias vi=vim
export EDITOR=vi
export VISUAL=vi
