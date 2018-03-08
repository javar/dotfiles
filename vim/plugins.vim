filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" List of plugins
Plugin 'scrooloose/nerdtree' " A tree explorer
Plugin 'ctrlpvim/ctrlp.vim'  " Full path fuzzy file, buffer, mru, tag, finder for Vim
Plugin 'vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plugin 'tpope/vim-endwise' " Wisely add 'end' in ruby, endfunction/endif/more
Plugin 'godlygeek/tabular' " Text filtering and alignment
Plugin 'elixir-editors/vim-elixir' " Elixir plugin
Plugin 'thoughtbot/vim-rspec' " RSpec runner
Plugin 'tlib'
Plugin 'tComment'
Plugin 'L9'

call vundle#end()
filetype plugin indent on
