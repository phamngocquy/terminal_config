:set mouse=nvi
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set clipboard=unnamed
:set relativenumber
":set list
":set listchars=tab:>-
:set guifont=DroidSansMono\ Nerd\ Font\ 11
:set expandtab
:tnoremap <Esc> <C-\><C-n>

let mapleader=";"

autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType proto setlocal tabstop=2 shiftwidth=2 softtabstop=2


call plug#begin()
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}  " Auto Completion
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' } " Find file
Plug 'https://github.com/szw/vim-maximizer' " Maximizer
Plug 'jiangmiao/auto-pairs' " auto pairs { [ ( ...
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'ryanoasis/vim-devicons' "Vim icon
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'mhinz/vim-grepper' " Search word in project
Plug 'sbdchd/neoformat' " NeoVim format code
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'golang/lint'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'integralist/vim-mypy'
Plug 'kdheepak/lazygit.nvim'
"themes
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'


set encoding=UTF-8
call plug#end()


"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-Right> <C-W>l<C-W><CR>
nnoremap <C-Left> <C-W>h<C-W><CR>
nnoremap <C-Up> gT<CR>
nnoremap <C-Down> gt<CR>

" <M option key in Macos
nnoremap <M-Right> <C-W>l<C-W><CR>
nnoremap <M-Left> <C-W>h<C-W><CR>
nnoremap <M-Up> gT<CR>
nnoremap <M-Down> gt<CR>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <M-f> :CocCommand fzf-preview.ProjectFiles<CR>
nnoremap <C-f> :CocCommand fzf-preview.ProjectFiles<CR>

nnoremap <leader>gr :Grepper -tool git<CR>
nnoremap <leader>p :CocCommand pydocstring.runFile<CR>
nnoremap <leader>o :CocCommand pyright.organizeimports<CR>
nnoremap <leader>t :CocCommand terminal.Toggle<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>gt :LazyGitCurrentFile<CR>

" vim better whiltespace
"let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1

"let g:python3_host_prog = expand('~/IPyEnv/IVenv38/bin/python3')
let g:python3_host_prog = '~/IPyEnv/IVenv38/bin/python3'
let g:deoplete#enable_at_startup = 1
let g:AutoPairsFlyMode = 1
hi Pmenu ctermbg=black ctermfg=white

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" LeaderF config
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1


"airline config
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


"nvim
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1

" neo format
let g:format_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'replace': 1,
            \ 'stdin': 1,
            \ 'env': ["DEBUG=1"],
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }
let g:neoformat_enabled_python = ['autopep8', 'docformatter']

" nerdtree
nnoremap <leader>l :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeTabsToggle<CR>

:colorscheme onedark
