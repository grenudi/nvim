let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit nvim/init.vim
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 55) / 111)
exe 'vert 2resize ' . ((&columns * 79 + 55) / 111)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt ~/projects/diary/main.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 129 - ((17 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 129
let s:c = 31 - ((29 * winwidth(0) + 39) / 79)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 31 . '|'
else
  normal! 031|
endif
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 55) / 111)
exe 'vert 2resize ' . ((&columns * 79 + 55) / 111)
tabnext 1
badd +129 nvim/init.vim
badd +1 ~/projects/diary/main.js
badd +22 ~/.bashrc
badd +1 ~/Projects/GCME
badd +1 ~/builds/dwm/config.h
badd +1 ~/builds/dwm/config.mk
badd +1 /etc/openvpn/client/uberman.ovpn
badd +1 ~/Projects/megamacros/README.md
badd +1 ~/Projects/megamacros/LICENSE
badd +1 /usr/share/nvim/runtime/doc/fold.txt
badd +1 ~/index.html
badd +1 nvim/README.md
badd +1 nvim/.gitignore
badd +1 /usr/share/nvim/runtime/doc/autocmd.txt
badd +1 nvim/session.vim
badd +1 /usr/share/nvim/runtime/doc/motion.txt
badd +1 nvim/.git/MERGE_MSG
badd +1 /usr/share/nvim/runtime/doc/change.txt
badd +1 /usr/share/nvim/runtime/doc/tabpage.txt
badd +1 nvim/\[Plugins]
badd +1 nvim/\[Plugins]\ (2)
badd +1 readme.md
badd +1 espanso/default.yml
badd +1 ~/tmp.txt
badd +1 systemd/user/espanso.service
badd +1 /tmp/bash-fc.fkF5vj
badd +1 src/content/throwByKey.js
badd +1 /usr/share/nvim/runtime/doc/windows.txt
badd +1 ~/Projects/perltest/testing.pl
badd +1 \[Plugins]
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
