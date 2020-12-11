let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +129 init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +465 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +19 README.md
badd +3 .gitignore
badd +491 /usr/share/nvim/runtime/doc/autocmd.txt
badd +43 session.vim
badd +859 /usr/share/nvim/runtime/doc/motion.txt
badd +1 .git/MERGE_MSG
badd +766 /usr/share/nvim/runtime/doc/change.txt
badd +235 /usr/share/nvim/runtime/doc/tabpage.txt
badd +1 \[Plugins]
badd +1 \[Plugins]\ (2)
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
18,21fold
31,37fold
38,44fold
46,46fold
48,48fold
48,49fold
48,49fold
48,49fold
48,50fold
48,50fold
48,54fold
55,56fold
55,58fold
71,81fold
let s:l = 31 - ((20 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
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
