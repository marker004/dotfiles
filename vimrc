set nocompatible              " be iMproved, required
filetype off                  " required

" --- BEGIN Vundle Config ---
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-endwise'
Plugin 'jeetsukumaran/vim-filebeagle'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'moll/vim-bbye'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/EnhCommentify.vim'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'tommcdo/vim-exchange'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'lumiliet/vim-twig'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"
call vundle#end()
" --- END Vundle Config ---

runtime macros/matchit.vim

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on

  " Restore cursor position in irb
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Source the vimrc file after saving it
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Use relative line numbers
set rnu

" Speed up drawing on screen
set ttyfast
set lazyredraw

" Configure UI Colors
set term=screen-256color
set t_Co=256
set background=dark
let base16colorspace=256        " Access colors present in 256 colorspace
let g:seoul256_background = 235
let g:kolor_alternative_matchparen=0 " Gray 'MatchParen' color. Default: 0
colorscheme kolor

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
set winwidth=81

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Enable syntax highlighting
if &t_Co > 2 || has("gui_running")
  syntax on
endif

set number
set guifont=Monaco:h12
set undodir=~/.vim/undo
set splitbelow
set splitright

" Setup buffer writing rules
set nobackup
set nowritebackup
set noswapfile
set autowriteall

" Highlight cursor line only in current pane
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" tmux will only forward escape sequences to the terminal if surrounded by a
" DCS sequence
" "
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

augroup vimrcEx
  autocmd!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Markdown Settings
augroup mkdn
  autocmd!
  " Set syntax hihglighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell
augroup END

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


inoremap jj <ESC>

" Quick search and replace
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" bind K to search word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" System clipboard shortcuts
" http://stackoverflow.com/a/30489686/1279177
noremap ty "+y
" copy a whole line to the clipboard
noremap tY "+Y
" put the text from clipboard after the cursor
noremap tp "+p
" put the text from clipboard before the cursor
noremap tP "+P

" Remove a buffer, keep split (with vim-bbye plugin)
nnoremap <Leader>d :Bdelete <CR>

" Easy comment toggle
nmap <C-x> <Plug>Traditional
vmap <C-x> <Plug>VisualTraditional
let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyUseBlockIndent = 'Yes'
"tabs shit
let g:airline#extensions#tabline#enabled = 1
map <left> :bprevious<CR>
map <right> :bnext<CR>

let g:syntastic_ruby_checkers = ['mri']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_disable_for_files_larger_than_kb = 500
" Open NERD Tree
map <F10> :NERDTreeToggle<CR>
" Prefer vertical splits when diffing
" set diffopt+=vertical

set hidden
