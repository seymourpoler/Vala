#/usr/bin/bash

if [ -f program ]; then
    rm program
fi
valac --pkg gtk4 --pkg glib-2.0 *.vala  -o program
