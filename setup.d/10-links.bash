#bashrc links
ln -fs $PWD/bash/rc.bash ~/.bashrc
ln -fs $PWD/bash/profile.bash ~/.bash_profile
ln -fs $PWD/bash/aliases.bash ~/.bash_aliases
ln -fs $PWD/bash/functions.bash ~/.bash_functions
ln -fs $PWD/bash/colors.bash ~/.bash_colors
#tmux links
ln -fs $PWD/tmux/tmux.conf ~/.tmux.conf
#vim links
rm -rf ~/.vim
ln -fs $PWD/vim ~/.vim
ln -fs $PWD/vim/vimrc ~/.vimrc
