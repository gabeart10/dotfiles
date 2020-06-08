unalias -a
[[ $PLATFORM != mac ]] && alias ls='ls --color=auto'
alias path='echo -e ${PATH//:/\\n}'
alias aliases="$EDITOR $HOME/repos/dotfiles/bash/aliases.bash"
alias funcs="$EDITOR $HOME/repos/dotfiles/bash/functions.bash"
alias vimrc="$EDITOR $HOME/repos/dotfiles/vim/vimrc"
alias bashcolors="$EDITOR $HOME/repos/dotfiles/bash/colors.bash"
alias weather="curl wttr.in"
alias c="xclip"
alias v="xclip -o"
