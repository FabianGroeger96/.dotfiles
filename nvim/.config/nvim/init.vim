" Config Vim

" Basic configs
syntax on
filetype on
filetype plugin on
set encoding=utf-8
set number
set ai
set hlsearch
set ruler
set clipboard+=unnamed
set showmatch
set backspace=2 " make backspace work like most other programs
set noshowmode
set number relativenumber
set nu rnu
set laststatus=2
set colorcolumn=120

" Keybindings
inoremap jj <ESC>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Plugins
call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Statusline
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'

Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'

" Pydocstring
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" Telescope (fuzzy finder)
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

" Vim be good game to get better at it
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

" Theme options
colorscheme gruvbox
set background=dark
let g:gruvbox_guisp_fallback = 'bg'

" Python
" add breakpoint to code
map <leader>b oimport pdb; pdb.set_trace()<Esc>

" Telescope
" Find files using Telescope commands
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')
EOF

" Coc
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>
" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Rename
nmap <leader>rn  <Plug>(coc-rename)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L
" Use <Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__'] "ignore files in NERDTree
" Create default mappings
let g:NERDCreateDefaultMappings = 1
let NERDTreeShowHidden=1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Doge (Docstring)
let g:doge_doc_standard_python = 'reST'

" HTML configs
autocmd BufRead,BufNewFile *.htm,*.html,*.js,*.css setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Statusline (airline)
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \   'active': {
  \     'left': [['mode', 'paste'], ['coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok'], ['coc_status', 'correntfunction', 'readonly', 'filename', 'modified']]
  \   }
  \ }

" register compoments:
call lightline#coc#register()

" coc default extensions
let g:coc_global_extensions = [
            \ 'coc-docker',
            \ 'coc-git',
            \ 'coc-json',
            \ 'coc-prettier',
            \ 'coc-pyright',
            \ 'coc-spell-checker',
            \ 'coc-yaml',
            \ ]
