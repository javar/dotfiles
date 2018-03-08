dotfiles_path=$(cd "$(dirname "$0")"; pwd)
current_date=`date "+%Y%m%d%H%M%S"`

function check_and_link_directory() {
  local source_path=$1
  local destination_path=$2

  if [ -d ~/$destination_path ] || [ -h ~/$destination_path ]
  then
    echo "Found ~/$destination_path Backing up to ~/$destination_path.pre-$current_date";
    mv ~/$destination_path ~/$destination_path.pre-$current_date
  fi
  ln -s $dotfiles_path/$source_path ~/$destination_path
  echo "Linked ~/$destination_path"
}

function check_and_link_file() {
  local source_path=$1
  local destination_path=$2

  if [ -f ~/$destination_path ] || [ -h ~/$destination_path ]
  then
    echo "Found ~/$destination_path Backing up to ~/$destination_path.pre-$current_date";
    mv ~/$destination_path ~/$destination_path.pre-$current_date
  fi
  ln -s $dotfiles_path/$source_path ~/$destination_path
  echo "Linked ~/$destination_path"
}

function check_and_install_vundle() {
  if [ ! -d ~/.vim/bundle/Vundle.vim ]
  then
    echo "Cloning Vundle..."
    /usr/bin/env git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
}

# BASH
check_and_link_file ".bash_profile" ".bash_profile"

# GIT
check_and_link_file ".gitconfig" ".gitconfig"

# VIM
check_and_link_file ".vimrc" ".vimrc"
check_and_link_directory "vim" ".vim"
check_and_install_vundle
if which vim && which git &> /dev/null; then
  echo "Installing vim plugins..."
  vim +PluginInstall +qall
  echo "vim plugins installed"
else
  echo "Vim plugins were not installed. git is not available."
fi
