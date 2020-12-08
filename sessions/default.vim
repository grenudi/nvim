let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +8 init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +469 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +1 README.md
argglobal
%argdel
edit README.md
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 17 + 18) / 37)
exe '2resize ' . ((&lines * 17 + 18) / 37)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 04|
wincmd w
argglobal
if bufexists("init.vim") | buffer init.vim | else | edit init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
18,21fold
27,33fold
35,36fold
34,40fold
42,42fold
42,43fold
42,43fold
42,43fold
42,44fold
42,44fold
42,47fold
48,49fold
48,51fold
59,68fold
18
normal! zo
34
normal! zo
34
normal! zc
42
normal! zo
42
normal! zo
42
normal! zo
42
normal! zo
42
normal! zo
42
normal! zo
42
normal! zc
42
normal! zc
42
normal! zc
42
normal! zc
42
normal! zc
42
normal! zc
48
normal! zo
48
normal! zc
let s:l = 75 - ((4 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
75
normal! 0
wincmd w
exe '1resize ' . ((&lines * 17 + 18) / 37)
exe '2resize ' . ((&lines * 17 + 18) / 37)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
