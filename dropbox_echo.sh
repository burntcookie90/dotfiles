#!/bin/sh
dropbox stop
echo 1000000 | sudo tee /proc/sys/fs/inotify/max_user_watches
dropbox start
