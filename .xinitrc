[[ -f ~/.Xresources ]] && xrdb -load ~/.Xresources
xsetroot -cursor_name left_ptr
cd $HOME
xterm &
$HOME/.cabal/bin/xmonad
