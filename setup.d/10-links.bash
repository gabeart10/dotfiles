#bashrc links
ln -fs $PWD/bash/inputrc $HOME/.inputrc
ln -fs $PWD/bash/rc.bash ~/.bashrc
ln -fs $PWD/bash/profile.bash ~/.bash_profile
ln -fs $PWD/bash/aliases.bash ~/.bash_aliases
ln -fs $PWD/bash/functions.bash ~/.bash_functions
ln -fs $PWD/bash/colors.bash ~/.bash_colors
ln -fs $PWD/bash/dircolors $HOME/.dircolors
#tmux links
ln -fs $PWD/tmux/tmux.conf ~/.tmux.conf
#vim links
mkdir -p ~/.vim/autoload
cp $PWD/vim/autoload/plug.vim ~/.vim/autoload
ln -fs $PWD/vim/vimrc ~/.vimrc
vim +':PlugInstall' +':q!' +':q!'
