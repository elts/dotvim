set nocompatible              " be iMproved
filetype off                  " required!

" Vundle Config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles here:
"
" original repos on GitHub
"" Syntax checking plugin
Bundle 'scrooloose/syntastic'
"" NerdTree & NerdTree Support for tabs
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs' 
"" SnipMate is a snippet plugin, plus its deps
Bundle 'MarcWeber/vim-addon-mw-utils' 
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate' 
"" Flexible viewer for any documentation source
" Bundle 'powerman/vim-plugin-viewdoc'
"" Todo.txt plugin
Bundle 'freitass/todo.txt-vim'
"" Easy allign text
Bundle 'godlygeek/tabular'
""  MarkDown plugin
Bundle 'jngeist/vim-multimarkdown' 
"" JavaScript Syntax
" Bundle 'othree/javascript-libraries-syntax.vim'
"" An autocompletion daemon for the Golang, Golang support plugins
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go' 
"" Retro groove color scheme for Vim
Plugin 'morhetz/gruvbox' 

" vim-scripts repos
" Bundle 'Limbo-syntax'

" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'

" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
"
"""" End of Vundle Config """""""


" Main Configuration """
"
filetype plugin indent on	" required!
let mapleader = ","
set omnifunc=syntaxcomplete#Complete
syntax on
set mouse=a
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
set nowrap                      " do not wrap lines
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
set tabstop=4                   " number of spaces that a <Tab> counts for
set shiftwidth=4                " number of spaces to use for each step of indent
set softtabstop=4
set smarttab                    " inserts blanks according to 'shiftwidth'
set expandtab                   " spaces instead of tabs
set visualbell                  " visual bell instead of beeping
set wildmenu                    " command-line completion in an enhanced mode
set rnu                         " turning on relative line numbering
"set nu                         " turning on line numbering
" inoremap  ,  ,<Space>         " comma always followed by a space

" Omni-Completion Settings
inoremap <C-x> <C-x><C-o>
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Go Specific Setup
"
" Gocode is not managed by Vundle. You should do:
" cd $GOPATH/src/github.com/nsf/gocode
" vim/update.sh
"
" Open And Close Go Files
"au BufRead,BufNewFile *.go set list noexpandtab syntax=go listchars=tab:\|\ ,trail:-
"let g:gofmt_command = 'goimports'
let g:go_fmt_command = "goimports"
"au BufWritePre *.go Fmt

" Tabs
set showtabline=2
set tabpagemax=15
nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" ConqueGDB
let g:ConqueGdb_Leader = "\\"

" NERDTreeToggle
let g:nerdtree_tabs_open_on_gui_startup=0
map        <Leader>n     :NERDTreeTabsToggle<CR>

" NERDTree
map    <C-a>         :NERDTree<CR>
vmap   <C-a>    <Esc>:NERDTree<CR>
imap   <C-a>    <Esc>:NERDTree<CR>

" Arm Asm Syntax
let asmsyntax='armasm'
let filetype_inc='armasm'

" Custom commands
command -nargs=* Run ConqueTerm <args>

" theme
set background=dark    " Setting dark mode
colorscheme gruvbox
