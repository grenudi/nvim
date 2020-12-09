let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 .gitignore
badd +65 init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +465 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +9 README.md
badd +491 /usr/share/nvim/runtime/doc/autocmd.txt
badd +43 session.vim
badd +859 /usr/share/nvim/runtime/doc/motion.txt
badd +1 .git/MERGE_MSG
badd +766 /usr/share/nvim/runtime/doc/change.txt
badd +235 /usr/share/nvim/runtime/doc/tabpage.txt
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
1,21fold
23,29fold
30,36fold
22,37fold
38,42fold
45,50fold
53,56fold
57,61fold
43,62fold
80,87fold
67,92fold
96,101fold
102,105fold
106,112fold
113,114fold
115,119fold
120,122fold
123,128fold
129,130fold
131,132fold
95,133fold
95,133fold
134,145fold
147,154fold
146,155fold
157,157fold
158,160fold
156,161fold
93,162fold
163,181fold
1
normal! zo
22
normal! zo
22
normal! zc
43
normal! zo
43
normal! zc
67
normal! zo
93
normal! zo
95
normal! zo
95
normal! zo
146
normal! zo
146
normal! zc
156
normal! zo
156
normal! zc
let s:l = 65 - ((60 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 06|
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
