"PLUGINS
call plug#begin('~/.config/nvim/plugged')
  Plug 'https://github.com/tpope/vim-sensible'
  Plug 'https://github.com/junegunn/seoul256.vim'
  Plug 'https://github.com/tpope/vim-surround'
  Plug 'https://github.com/kana/vim-arpeggio'
  Plug 'https://github.com/scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeClose']}
  "JS IDE
  Plug 'https://github.com/pangloss/vim-javascript'
  "themes
  Plug 'https://github.com/rafi/awesome-vim-colorschemes'
  Plug 'https://github.com/mswift42/vim-themes'
call plug#end()
"/PLUGINS
"THEMES
  colorscheme gruvbox
  set cursorline
"/Themes
"ENVIRONMENTAL
  let g:defaultSession="$HOME/.config/nvim/sessions/default.vim"
  function! g:SaveSession()
    if filereadable("session.vim")
      execute ":mksession!" . "session.vim"
    else
      execute ":mksession!" . g:defaultSession
    endif
  endfunction
  function! g:LoadSession()
    if filereadable("session.vim")
      execute "source " . "session.vim"
    else
      execute "source " . g:defaultSession
    endif
  endfunction
  function! ResCur()
    if line("'\"") <= line("$")
      normal! g`"
      return 1
    endif
  endfunction
  augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
  augroup END
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
"/Environmental
call g:LoadSession()
"UTIL FUNCTIONS
"/Util Functions
"SET
  set nu
  set nowrap
  set smartindent

  set tabstop=2 softtabstop=2
  set shiftwidth=2
  set expandtab
  set smartindent
"/SET
"MAP
  let mapleader = " "
  "Nmap
    "Session
      nnoremap <leader>qr :call g:SaveSession()<CR> :source $MYVIMRC<CR>
      nnoremap <leader>qq :NERDTreeClose<CR> :call g:SaveSession()<CR> :wqa!<CR>
      nnoremap <leader>qss :mksession! session.vim<CR>
      nnoremap <leader>qsr :call delete("session.vim")<CR>
      nnoremap <leader>qQ :qa!<CR>
    "File
      nnoremap <leader>fs :w<CR>
      nnoremap <leader>fev :e $MYVIMRC<CR>
    "Nav
      noremap <C-h> 0
      noremap <C-l> $
      noremap <leader> :
      call arpeggio#map('n', '', 0, 'jk', '<Esc>')
      call arpeggio#map('n', '', 0, 'hl', '<Enter>')
    "Window
      noremap <leader>wc :close<CR>
    "Tabs
      map <C-t><up> :tabr<cr>
      map <C-t><down> :tabl<cr>
      map <C-t><left> :tabp<cr>
      map <C-t><right> :tabn<cr>
    "Toggle
      nnoremap <leader>tn :setl <c-r>=&nu ? "nonu" : "nu"<cr><cr>
      nnoremap <leader>tr :setl <c-r>=&rnu ? "nornu" : "rnu"<cr><cr>
      nnoremap <leader>tf :NERDTreeToggle<CR>
    "Plugin manager
      nnoremap <leader>pi :PlugInstall<CR>
      nnoremap <leader>pu :PlugUpdate<CR>
      nnoremap <leader>pg :PlugUpgrade<CR>
      nnoremap <leader>pc :PlugClean<CR>
      nnoremap <leader>ps :PlugStatus<CR>
  "/Nmap
  "IMAP
    call arpeggio#map('i', '', 0, 'jk', '<Esc>')

    imap <C-h> <left>
    imap <C-l> <right>
    imap <C-j> <down>
    imap <C-k> <up>

    "TODO: sequential last key spam
    "imap <C-h>l <delete>
    "imap <C-l>h <backspace>
  "/Imap
  "CMAP
    "NAV
      call arpeggio#map('c', '', 0, 'jk', '<Esc>')
      cmap jk <Esc>
      cmap kj <Esc>

      cmap <C-j> <down>
      cmap <C-k> <up>
      cmap <C-h> <left>
      cmap <C-l> <right>
  "/Cmap
"/Map
"JS IDE
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
