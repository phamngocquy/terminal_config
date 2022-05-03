:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set clipboard=unnamed
:set relativenumber
:set list
:set listchars=tab:>-
:tnoremap <Esc> <C-\><C-n>
:nnoremap H gT
:nnoremap L gt

colorscheme default

call plug#begin()
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}  " Auto Completion
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' } " Find file
Plug 'https://github.com/szw/vim-maximizer' " Maximizer
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs' " auto pairs { [ ( ...

set encoding=UTF-8
call plug#end()

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <C-f> :LeaderfFile<CR>



let g:format_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'replace': 1,
            \ 'stdin': 1, 
            \ 'env': ["DEBUG=1"],
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }

let g:neoformat_enabled_python = ['autopep8']
let g:python3_host_prog = expand('~/IVenv38/bin/python3')
let g:deoplete#enable_at_startup = 1
let g:AutoPairsFlyMode = 1
hi Pmenu ctermbg=black ctermfg=white
