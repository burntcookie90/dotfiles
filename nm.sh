nmcli -t -f NAME,TYPE con | grep wireless |grep -o "[^:]*" | head -n 1
