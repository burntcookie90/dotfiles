#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
#DEFAULT_SESSION=exec ck-launch-session dbus-launch startxfce4

xsetroot -cursor_name left_ptr
case $1 in
	xfce4)
		exec dbus-launch  startxfce4
		;;
	xmonad)
		/usr/bin/xscreensaver -no-splash &
		trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x000000 --height 16 &  
		wicd-client --tray &
		dropbox start &
		sh ~/.fehbg &
		exec dbus-launch xmonad
		#set the cursor
		;;
	awesome)
		exec dbus-launch awesome
		;;
#	*)
#		exec $DEFAULT_SESSION
#		;;
esac
# exec gnome-session
# exec startkde

#set the cursor
#xsetroot -cursor_name left_ptr
#exec ck-launch-session dbus-launch startxfce4
#exec ck-launch-session dbus-launch xmonad
# ...or the Window Manager of your choice
