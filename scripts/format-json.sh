#!/bin/bash

for i in $(ls ../Mod/*.JSON); do
    echo $i
    sed ':a;N;$!ba;s/\n/ /g' $i > $i.new
    mv $i.new $i
    cat $i | python -m json.tool > $i.new
    mv $i.new $i
done
