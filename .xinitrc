#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


xsetroot -cursor_name left_ptr
		/usr/bin/xscreensaver -no-splash &
		synergys -c ~/synergy.conf &
		google-musicmanager &
		trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 3 --transparent true --alpha 0 --tint 0x000000 --height 17 --monitor primary &
		wicd-client --tray &
		thunar --daemon &
		mpd &
		dropbox start &
		sh ~/.fehbg &
		compton -cb &
		exec dbus-launch xmonad
		#set the cursor
