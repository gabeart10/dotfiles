#bashrc links
ln -fs $PWD/bash/inputrc $HOME/.inputrc
ln -fs $PWD/bash/rc.bash ~/.bashrc
ln -fs $PWD/bash/profile.bash ~/.bash_profile
ln -fs $PWD/bash/aliases.bash ~/.bash_aliases
ln -fs $PWD/bash/functions.bash ~/.bash_functions
ln -fs $PWD/bash/dircolors $HOME/.dircolors
#vim links
mkdir -p ~/.vim/colors
cp $PWD/vim/solarized.vim ~/.vim/colors/
ln -fs $PWD/vim/vimrc ~/.vimrc