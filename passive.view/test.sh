#/usr/bin/bash

./compile.sh
if [ -f program ]; then
    ./program --run-tests
fi
