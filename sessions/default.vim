let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/GCME
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +32 ~/.bashrc
badd +1 ~/Projects/GCME
badd +17 ~/builds/dwm/config.h
badd +13 ~/builds/dwm/config.mk
badd +1 /etc/openvpn/client/uberman.ovpn
badd +168 ~/.config/nvim/init.vim
badd +4 ~/Projects/megamacros/README.md
badd +21 ~/Projects/megamacros/LICENSE
badd +465 /usr/share/nvim/runtime/doc/fold.txt
badd +23 ~/index.html
badd +19 ~/.config/nvim/README.md
badd +3 ~/.config/nvim/.gitignore
badd +491 /usr/share/nvim/runtime/doc/autocmd.txt
badd +43 ~/.config/nvim/session.vim
badd +859 /usr/share/nvim/runtime/doc/motion.txt
badd +1 ~/.config/nvim/.git/MERGE_MSG
badd +766 /usr/share/nvim/runtime/doc/change.txt
badd +235 /usr/share/nvim/runtime/doc/tabpage.txt
badd +1 ~/.config/nvim/\[Plugins]
badd +1 ~/.config/nvim/\[Plugins]\ (2)
badd +18 readme.md
badd +6 ~/.config/espanso/default.yml
badd +17 ~/tmp.txt
badd +5 ~/.config/systemd/user/espanso.service
badd +1 /tmp/bash-fc.fkF5vj
badd +39 src/content/throwByKey.js
badd +1 /usr/share/nvim/runtime/doc/windows.txt
badd +1 ~/Projects/perltest/testing.pl
argglobal
silent! argdel *
edit /usr/share/nvim/runtime/doc/windows.txt
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
exe '1resize ' . ((&lines * 20 + 24) / 48)
exe '2resize ' . ((&lines * 24 + 24) / 48)
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
let s:l = 93 - ((18 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
93
normal! 0
wincmd w
argglobal
if bufexists('src/content/throwByKey.js') | buffer src/content/throwByKey.js | else | edit src/content/throwByKey.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
34,45fold
34
normal! zo
let s:l = 41 - ((7 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 06|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 20 + 24) / 48)
exe '2resize ' . ((&lines * 24 + 24) / 48)
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
