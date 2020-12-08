let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .gitignore
badd +65 init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +469 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +1 README.md
badd +1 /usr/share/nvim/runtime/doc/motion.txt
argglobal
%argdel
edit init.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 67 + 67) / 135)
exe 'vert 2resize ' . ((&columns * 67 + 67) / 135)
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
15,18fold
21,27fold
28,34fold
35,40fold
41,44fold
45,49fold
19,50fold
52,53fold
54,63fold
67,72fold
73,75fold
76,81fold
82,83fold
84,88fold
89,92fold
93,98fold
66,99fold
66,99fold
100,111fold
113,121fold
112,122fold
64,123fold
124,142fold
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 01|
wincmd w
argglobal
if bufexists("/usr/share/nvim/runtime/doc/motion.txt") | buffer /usr/share/nvim/runtime/doc/motion.txt | else | edit /usr/share/nvim/runtime/doc/motion.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1036 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1036
normal! 031|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 67) / 135)
exe 'vert 2resize ' . ((&columns * 67 + 67) / 135)
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
