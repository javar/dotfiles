set nocompatible
so ~/.vim/plugins.vim

set hidden                                              " allow unsaved background buffers and remember marks/undo for them
set history=10000                                       " remember more commands and search history

set expandtab								                            " Use spaces not tabs
set tabstop=2
set shiftwidth=2						                            " Global tab width
set softtabstop=2
set autoindent
set laststatus=2							                          " Always display the status line
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase                                " make searches case-sensitive only if they contain upper-case characters
"set cursorline                                         " highlight current line
set cmdheight=1
set switchbuf=useopen
set winwidth=79

set noswapfile

set backspace=indent,eol,start						              " allow backspacing over everything in insert mode
set showcmd                                             " display incomplete commands
syntax on                                               " Enable highlighting for syntax

let mapleader = ','                                     " The default leader id \, but a comma is much better

set timeout timeoutlen=1000 ttimeoutlen=100             " Fix slow O inserts

set autoread                                            " If a file is changed outside of vim, automatically reload it without asking

set number
set ruler								                                " Show the cursor positions all the time

set visualbell                                          " No beeping

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256                                            " 256 colors
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader><space> :nohlsearch<cr>                    " Add simple highlight removal
nmap <leader>i mmgg=G`m<CR>                             " Indent all the file

map <leader>gg :e Gemfile<cr>                           " Open Gemfile
map <C-n> :NERDTreeToggle<CR>                           " NERDTree ctrl+n

map <leader>f :CtrlP .<cr>                              " CtrlP mappings


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALIASES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable arroy keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NICE TO HAVE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e                      " remove extra whitespaces

" Event syntax highlighting
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTO COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>