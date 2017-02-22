set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required 
Plugin 'VundleVim/Vundle.vim'

" A tree explorer
Plugin 'scrooloose/nerdtree' 

" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby', { 'for': 'ruby' } 

" Interactive command execution in Vim
Plugin 'Shougo/vimproc.vim', { 'do' : 'make' }

" Full path fuzzy file, buffer, mru, tag, finder for Vim
Plugin 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Lean & mean status/tabline for vim that's light as air
" Plugin 'bling/vim-airline'

" Comment stuff out
Plugin 'tpope/vim-commentary', { 'tag': 'v1.3' }

" Wisely add 'end' in ruby, endfunction/endif/more
Plugin 'tpope/vim-endwise'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" All of your Pluginins must be added before the following line
call vundle#end()
