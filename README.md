Simple NeoVim init.m (sort of)
  
Remove SpaceVim:  
```
curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall
```
then:
```
mv ~/.config/nvim ~/.config/nvim.back ; git clone https://github.com/grenudi/nvim ~/.config/nvim
```
Fonts For PowerLine: 
```
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf ;
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf ;
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```
On First Launch Press: space+pi , to install plugins , then just space+wc (sequentially just like in Spacemacs)
