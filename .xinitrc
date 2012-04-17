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
	xmonad)
		exec ck-launch-session dbus-launch xmonad
		#set the cursor
		;;
	xfce4)
		exec ck-launch-session dbus-launch startxfce4
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
