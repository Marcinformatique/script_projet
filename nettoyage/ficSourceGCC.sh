#!/bin/bash

comptLigne=0
for file in $(find ~/gcc-master);
    do
        if [[ -f $file ]] && [[ ${file##*.} = "h" ]] || [[ ${file##*.} = "cc" ]];
            then
                ((comptLigne=$comptLigne + $(wc -l < $file) ))
            fi
    done

echo "Il y a $comptLigne lignes de code source"    