#!/bin/bash

cp 1000.tar out
cd out
for ((i = 1000; i > 0; i--)); do
    if [ ! -f "$i.tar" ]; then
        break
    fi
    tar -xvf $i.tar
    rm $i.tar
done
cd ..
