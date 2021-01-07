#!/bin/bash

for f in *.jpg 
    do 
        orientation=$(exiftool -Orientation -n "$f" | cut -c 35-35)
        orientationName=$(exiftool -Orientation "$f")
        if [ "$orientation" = "1" ]; then
            echo "$f -> $orientationName"
        elif [ "$orientation" = "6" ]; then
            echo "$f -> $orientationName"
            exiftool -Orientation=1 -n "$f"
            sips -r -270 "$f" > /dev/null
            # cp "$f" "rotated/$f"
        elif [ "$orientation" = "3" ]; then
            echo "$f -> $orientation -> $orientationName"
            exiftool -Orientation=1 -n "$f"
            sips -r -180 "$f" > /dev/null
            # cp "$f" "rotated/$f"
        else
            echo "$f -> Unknown orientation: $orientation"
        fi
    done
