" ENVIRONMENTAL
source $HOME/.config/nvim/sessions/default.vim

let g:LASTLAUNCHTIME = system('echo $VIMLASTLAUNCHTIME')
if (system('date +%s') - LASTLAUNCHTIME) < 2
	source $MYVIMRC
endif
system("VIMLASTLAUNCHTIME=$(date +%s"))
" /Environmental
" UTIL FUNCTIONS
"/Util Functions
" SET
set nowrap
set smartindent
" /SET
" MAP
let mapleader = " "
" Normal Mode Map
	"SESSION
	nnoremap <leader>qr :mksession! $HOME/.config/nvim/sessions/default.vim<CR> :source $MYVIMRC<CR>
	nnoremap <leader>qq :mksession! $HOME/.config/nvim/sessions/default.vim<CR> :wqa!<CR>
	nnoremap <leader>qQ :qa!<CR>

	"FILEs
	nnoremap <leader>fs :w<CR>

	"NAV remap
	noremap <C-h> 0
	noremap <C-l> $

	"WINDOWS

" /Normal Mode Map

" Insert Mode Map
inoremap jk <esc>
inoremap kj <esc>
" //Insert Mode Map
" /MAP

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tpope/vim-surround'
"Plug 'https://github.com/kana/vim-arpeggio'
"/PLUGINS

"JS IDE
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"concealing
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
"/JS IDE

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" THEMES
colorscheme gruvbox
" Change highlighting of cursor line when entering/leaving Insert Mode
set cursorline
" /THEMES

