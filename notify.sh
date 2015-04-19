#!/bin/bash
notify() {

    if read -t 0; then
        dzen2 -p 1 -w 200 -h 160 -x 1180 -y 1080 
    fi
}
