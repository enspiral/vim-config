if [ -d ~/.vim ]
then
  echo "You already have a Vim configuration installed. You'll need to remove ~/.vim if you want to install"
  exit
fi


echo "Cloning Vim files..."
/usr/bin/env git clone git@github.com:enspiral/vim-config.git ~/.vim


echo "Looking for an existing vimrc config..."
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]
then
  echo "Found ~/.vimrc. Backing up to ~/.vimrc.pre-oh-my-vim";
  cp ~/.vimrc ~/.vimrc.pre-oh-my-vim;
  rm ~/.vimrc
fi

echo "Using the Oh My Vim template file and adding it to ~/.vimrc"
cp ~/.vim/templates/vimrc.template ~/.vimrc


echo "Looking for an existing gvimrc config..."
if [ -f ~/.gvimrc ] || [ -h ~/.gvimrc ]
then
  echo "Found ~/.gvimrc. Backing up to ~/.gvimrc.pre-oh-my-vim";
  cp ~/.gvimrc ~/.gvimrc.pre-oh-my-vim;
  rm ~/.gvimrc
fi

echo "Using the Oh My Vim template file and adding it to ~/.vimrc"
cp ~/.vim/templates/gvimrc.template ~/.gvimrc

echo '         __                                  ___         '
echo '  ____  / /_     ____ ___  __  __  __   __  /__/___ ___  '
echo ' / __ \/ __ \   / __ `__ \/ / / /  | | / / /  / __ `__ \ '
echo '/ /_/ / / / /  / / / / / / /_/ /   | |/ / /  / / / / / / '
echo '\____/_/ /_/  /_/ /_/ /_/\__, /    |___/ /__/_/ /_/ /_/  '
echo '                        /____/'

echo "\n\n ....is now installed."

