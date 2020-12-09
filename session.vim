let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 .gitignore
badd +43 init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +465 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +7 README.md
badd +491 /usr/share/nvim/runtime/doc/autocmd.txt
badd +43 session.vim
badd +859 /usr/share/nvim/runtime/doc/motion.txt
argglobal
%argdel
edit init.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
1,14fold
16,22fold
23,29fold
30,35fold
15,36fold
37,40fold
43,48fold
51,54fold
59,63fold
41,64fold
69,79fold
83,88fold
89,91fold
93,99fold
100,101fold
102,106fold
107,109fold
110,115fold
82,116fold
82,116fold
117,128fold
130,137fold
129,138fold
140,140fold
141,143fold
139,144fold
80,145fold
146,164fold
15
normal! zo
15
normal! zc
41
normal! zo
80
normal! zo
82
normal! zo
82
normal! zo
82
normal! zc
82
normal! zc
129
normal! zo
129
normal! zc
139
normal! zo
139
normal! zc
80
normal! zc
let s:l = 43 - ((42 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 01|
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
