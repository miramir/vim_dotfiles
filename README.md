# vim_dotfiles
Конфиги vim

если любите прятать конфиги из homedir в папку .config, то надо добавить в переменные окружения среды строку

```
export VIMINIT='let $MYVIMRC="${XDG_CONFIG_HOME}/vim/vimrc" | source $MYVIMRC'
```

если же пофиг, то просто сделайте симлинк

```
ln -s ~/.config/vim/vimrc ~/.vimrc
```
