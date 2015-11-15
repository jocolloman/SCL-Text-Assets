#!/bin/bash

for i in $(ls ../Mod/*.JSON); do
    echo $i
    cat $i | python -m json.tool > $i.new
    mv $i.new $i
done
