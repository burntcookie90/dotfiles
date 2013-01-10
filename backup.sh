#!/bin/sh

if [ $# -lt 1 ]; then 
    echo "No destination defined. Usage: $0 destination" >&2
    exit 1
elif [ $# -gt 1 ]; then
    echo "Too many arguments. Usage: $0 destination" >&2
    exit 1
fi

START=$(date +%s)
rsync -rptgoDLkAXv /* $1 --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,/home/*/.gvfs,/var/lib/pacman/sync/*,/home/*/.cache/chromium/*,/home/*/.thumbnails/*,/home/*/Dropbox/*,/home/*/android-sdk,/home/*/.android,/home/*/.teamviewer,/home/*/.wine,/home/*/winebackup,/home/*/wineprefixes}
FINISH=$(date +%s)
echo "total time: $(( ($FINISH-$START) / 60 )) minutes, $(( ($FINISH-$START) % 60 )) seconds"

touch $1/"Backup from $(date '+%A, %d %B %Y, %T')"