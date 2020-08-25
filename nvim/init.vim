set nocompatible            " disable compatibility to old-time vi
let g:airline#extensions#tabline#enabled = 1
let g:workspace_session_directory = $VimDot . "sessions\\"
let g:workspace_autocreate = 1
let $NVIM_RPLUGIN_MANIFEST=$XDG_CONFIG_HOME . "nvim\\rplugin.vim"
let g:workspace_autosave = 1
let autoloadpath=$VimDot . 'autoload\'
let plugpath=autoloadpath . 'plug.vim'

if empty(glob(plugpath))
    execute '!curl.exe -fLo ' . plugpath . ' --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



set guifont=PragmataPro\ Mono\ Liga:h18
let g:deoplete#enable_at_startup = 1

set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
"set hlsearch                " highlight search results
set expandtab               " converts tabs to white space
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
" set wildmode=longest,list   " get bash-like tab completions
"set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

let g:yats_host_keyword = 1
set re=0

let g:airline_theme='base16'

call plug#begin(autoloadpath)
    Plug 'sebastianmarkow/deoplete-rust'
    Plug 'ayu-theme/ayu-vim'
    Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/seoul256.vim'
    Plug 'junegunn/vim-journal'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'nightsense/forgotten'
    Plug 'zaki/zazen'

    " Aethetics - Additional
    Plug 'nightsense/nemo'
    Plug 'yuttie/hydrangea-vim'
    Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
    Plug 'rhysd/vim-color-spring-night'
    Plug 'psliwka/vim-smoothie'

    " Functionalities
    Plug 'thaerkh/vim-workspace'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-surround'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'ervandew/supertab'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/vim-easy-align'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-abolish'
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'chrisbra/Colorizer'
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
    Plug 'vim-scripts/loremipsum'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'metakirby5/codi.vim'
    Plug 'dkarter/bullets.vim'

    " Entertainment
    "Plug 'ryanss/vim-hackernews'

    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'jesseleite/vim-agriculture'
    Plug 'airblade/gitgutter'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'cespare/vim-toml'
    Plug 'kien/rainbow_parentheses.vim'
    "Plug 'thaerkh/vim-workspace'
    Plug 'elzr/vim-json'
    Plug 'rust-lang/rust.vim'
    Plug 'vim-latex/vim-latex'
    Plug 'beeender/Comrade'
    Plug 'HerringtonDarkholme/yats.vim'
call plug#end()


let g:python_host_prog ="C:\\Pytho27\\python.exe"
let g:python3_host_prog ="C:\\Python39\\python.exe"



syntax on
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
execute "set fillchars+=eob:\\ "
set wrap breakindent
set encoding=utf-8
set number
set title

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <Esc><Esc> <C-\><C-n>:q
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Deoplete
let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview

" vim-pydocstring
" let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '|-'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']
" fzf-vim
"let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions
function! g:FullscreenToggle()
    if g:neovide_fullscreen
        let g:neovide_fullscreen = v:false
    else
        let g:neovide_fullscreen = v:true
    endif
endfunction

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

""" Custom Mappings

let g:autofmt_autosave = 1
let mapleader="\<SPACE>"


imap <C-;> <Esc>
imap <C-CR> <Esc>

nnoremap <leader>s :ToggleWorkspace<CR>
nnoremap <tab>f :ls<CR>:b<Space>
nmap <Leader><CR> :Rg<space>
nmap <Leader>C :Commands<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>F :GFiles<CR>
nmap <Leader>f :Rg<CR>
nmap <Leader>: :<C-f>PA<CR>
nmap <Leader>; :!
nmap <Leader>x :x<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>i :vs<CR>:e $VIMINITPATH<CR>
nmap <Leader>I :source $VIMINITPATH<CR>
nmap <Leader>/ <Plug>RgRawSearch
vmap <Leader>/ <Plug>RgRawVisualSelection
nmap <Leader>* <Plug>RgRawWordUnderCursor<CR>
nmap <Leader>y "+y
nmap <Leader>Y "+Y
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <F3> :call g:FullscreenToggle()<cr>


nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme<space>
nmap <leader>et :colorscheme<space>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
"nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>t <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <leader><Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>



set background=dark
colorscheme base16-material-palenight
