set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'derekwyatt/vim-scala'
Bundle 'kien/rainbow_parentheses.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattonrails/vim-mix'
Plugin 'fatih/vim-go'
Plugin 'rudes/vim-java'
Plugin 'idris-hackers/idris-vim'
Plugin 'guns/vim-clojure-static'
Plugin 'vim-scripts/VimClojure'
Plugin 'syntastic'
Plugin 'paredit.vim'
Plugin 'xmledit'
Plugin 'ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fireplace'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
" For YouCompleteMe, more install steps are needed:
" https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
Plugin 'Valloric/YouCompleteMe'
Bundle 'mrk21/yaml-vim'
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" leader stuff
let mapleader = ","

" Ctrl-p
let g:ctrlp_map = '<leader>o'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|target'

" vim-go
au FileType go nmap <Leader>t <Plug>(go-info)
au FileType go nmap <Leader>g <Plug>(go-import)

" Use clj syntax highlighting for cljs
au BufNewFile,BufRead *.cljs set filetype=clojure

" disable folding for vim-markdown
let g:vim_markdown_folding_disabled = 1

" Insert single space
nmap <Space> i_<Esc>r

syntax on
set expandtab
set tabstop=2
set shiftwidth=2

" required for YouCompleteMe
set encoding=utf-8

autocmd BufWritePre * :%s/\s\+$//e

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
