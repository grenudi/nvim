let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 ~/builds/dwm/config.h
badd +13 ~/builds/dwm/config.mk
badd +1 /etc/openvpn/client/uberman.ovpn
badd +73 init.vim
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
badd +18 ~/Projects/GCME/readme.md
badd +30 ~/.config/espanso/default.yml
badd +30 ~/.bashrc
badd +17 ~/tmp.txt
badd +5 ~/.config/systemd/user/espanso.service
badd +1 /tmp/bash-fc.fkF5vj
badd +1 NERD_tree_1
argglobal
silent! argdel *
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
let s:l = 71 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 05|
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
