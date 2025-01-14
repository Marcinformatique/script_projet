#!/bin/bash

# trouver les dossiers contenant des fichiers temporaires et les noter dans le fichier texte recenseCache.txt

ficRecense="/home/tristan/script/script_projet/nettoyage/recenseCache.txt"

[[ ! -f $ficRecense ]] && touch $ficRecense

for element in $(find ~);
    do
        if [[ -n $(echo "$element" | grep -i cache) ]] && [[ -d $element ]];
            then
                echo "$element" >> $ficRecense
            fi
    done

