" vim config for jarvis

" set backgroud color
set background=dark
" use 256 color
set t_Co=256

" set syntax check
syntax on
" set filetype check
filetype on

" set show line number
set number
" set indent
set autoindent
set smartindent

" set tab size
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" do not use swapfile
set noswapfile
set nocompatible
set backspace=indent,eol,start

" file encoding
set fileencodings=gb18030,utf-8,gb2312,gbk
set encoding=utf-8
set wildmenu

" for search
set ignorecase
set smartcase
set incsearch
set hlsearch

" set scroll distance
set scrolloff=5

" set fold style
set foldmethod=indent
" set no fold default
set nofoldenable

" key map
let mapleader = ","
inoremap jj <Esc>
inoremap kk <Esc>:wq<CR>
" no highlight
nnoremap <leader><space> :noh<CR>
nnoremap <tab> %
inoremap <tab> %
nnoremap <leader>w <C-w>v<C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-<> <C-W><
noremap <C->> <C-W>>
noremap <leader>a :Ack<space>-i<space>
noremap qq :q<CR>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <leader>n ddkP
nnoremap <leader>m ddp
" move speed up
noremap K 10k
noremap J 10j

" remember line last open
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" nerdtree settings
map <F9> :NERDTree<CR>
map <F10> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" snipmate settings
let g:snipMate = { 'snippet_version' : 1 }
imap <leader><tab> <Plug>snipMateNextOrTrigger

" airline settings
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
" let g:airline_base16_improved_contrast = 1
" let g:airline_base16_monotone = 1
" let g:airline_left_sep='>'
" let g:airline_right_sep='<'
let g:airline#extensions#tabline#enabled=1

" font settings
set guifont=Mononoki

" command-t settings
let g:CommandTFileScanner = 'find'
let g:CommandTMaxFiles=200000

" octol(high light) settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

" YouCompleteMe settings
let g:ycm_server_interpreter='/usr/bin/python3'
let g:ycm_use_cland = 1 
let g:ycm_clangd_binary_path='/usr/local/tools/llvm/bin/clangd'
let g:ycm_complement_in_comments = 1
let g:ycm_complement_in_strings = 1
let g:ycm_key_invoke_completion = '<leader><tab>'
let g:ycm_semantic_triggers = {
            \ 'c,cpp,go': ['re!\w{5}'],
            \}
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0 
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_max_num_candidates = 15
let g:ycm_max_num_candidates_to_detail = 5
let g:ycm_auto_hover=''

noremap <leader>jd :YcmCompleter GoToDefinition<CR>
noremap <leader>jf :YcmCompleter GoToDeclaration<CR>
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)
noremap <leader>ygt :YcmCompleter GetType<CR>
nmap <leader>yd <Plug>(YCMHover)

" git blame plugin
nnoremap <leader>s :<C-u>call gitblame#echo()<CR>

" async run plugin
noremap <leader>r :AsyncRun 
let g:asyncrun_open=10
let g:asyncrun_bell=1

" vim-gutentags(gtags)
" set tags=./.tags;,tags
" set autochdir
" let g:gutentags_project_root = ['.root', '.git']
" let g:gutentags_ctags_tagfile = '.tags'
" let g:gutentags_modules = ['gtags_cscope']
" let g:gutentags_cache_dir = expand('~/.cache/tags')
" let g:gutentags_ctags_extra_args = ['--output-format=e-ctags']
" let g:gutentags_auto_add_gtags_cscope = 0

" ctrlp plugin
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_clear_cache_on_exit = 0
if executable('fd')
    let g:ctrlp_user_command = 'fd -c nerver "" "%s"'
endif

" plugin
call plug#begin("~/.vim/plugged")
    Plug 'preservim/nerdtree',
    Plug 'wincent/command-t',
    Plug 'mileszs/ack.vim',
    Plug 'garbas/vim-snipmate',
    Plug 'tomtom/tlib_vim',
    Plug 'marcweber/vim-addon-mw-utils',
    Plug 'vim-airline/vim-airline',
    Plug 'vim-airline/vim-airline-themes',
    Plug 'altercation/vim-colors-solarized',
    Plug 'ycm-core/YouCompleteMe',
    Plug 'octol/vim-cpp-enhanced-highlight', " highlight for cpp
    Plug 'zivyangll/git-blame.vim',
    Plug 'skywind3000/asyncrun.vim',
    Plug 'tpope/vim-surround',
    Plug 'ctrlpvim/ctrlp.vim',
    Plug 'tpope/vim-fugitive',
    Plug 'dracula/vim', {'name': 'dracula'}
call plug#end()

" colorscheme dracula
