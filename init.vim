call plug#begin()
"Git integration
Plug 'tpope/vim-fugitive'

" Auto close () {} []
Plug 'jiangmiao/auto-pairs'

"Theme
Plug 'morhetz/gruvbox'

"CTRL N to select identical words
Plug 'terryma/vim-multiple-cursors'

"Multiple language support
Plug 'sheerun/vim-polyglot'

"Fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Lint
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'

"Autocompletion
function! DoRemote(arg)
	UpdateRemotePlugins
endfunction

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'greg-js/vim-react-es6-snippets'
Plug 'mattn/emmet-vim'

"Language protocol support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

"JSX support
Plug 'mxw/vim-jsx'

"Improved Markdown support
Plug 'plasticboy/vim-markdown'

"Modify surrounding chars, such as parantheses & quotes
Plug 'tpope/vim-surround'

call plug#end()

"Enable vim-jsx also for .js files
let g:jsx_ext_required = 0

"Disable folding for markdown files
let g:vim_markdown_folding_disabled = 1

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio']
    \ }

" Emmet configuration
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

"Deoplete {{{
    let g:deoplete#enable_at_startup = 1
"}}}

"Lint async 
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

"Statusline {{{
    hi User1 ctermbg=black   ctermfg=white   guibg=darkgrey  guifg=white
    hi User2 ctermbg=black   ctermfg=grey    guibg=darkgrey  guifg=grey

    set laststatus=2
    set statusline+=%1*
    set statusline+=%F\ 
    set statusline+=%2*
    set statusline+=%m%r
    set statusline+=%y
    set statusline+=%{fugitive#statusline()}
    set statusline+=%=
    set statusline+=%10((%l,%c)%)\ 
    set statusline+=%P
"}}}

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

colorscheme gruvbox

set background=dark

set expandtab
set shiftwidth=2
set tabstop=2
set smartindent
set smarttab

set ignorecase
set smartcase
set hlsearch
set incsearch

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Tabs
nnoremap <c-t> :vsplit <cr>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <c-p> :Files<cr>
" it is necessary install siversearcher https://github.com/ggreer/the_silver_searcher
" to use Ag
nnoremap <c-f> :Ag<space>
