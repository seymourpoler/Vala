#/usr/bin/bash

valac --pkg glib-2.0 *.vala -o test
./test --run-tests