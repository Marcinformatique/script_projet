#!/bin/bash

#fichier de recensement
ficRecense="/home/tristan/script/script_projet/nettoyage/recenseCache.txt"
if [[ ! -f $ficRecense ]];
    then 
        echo "le fichier $ficRecense n'est pas trouvé, merci de le créer et de le peupler !"
        else
            # on liste chaque répertoire 
            for element in $(cat $ficRecense);
                do
                    #si dans un répertoire clé il y a un fichier alors on le supprime
                    for fichier in "$element"/*;
                        do
                            [[ -f $fichier ]] && echo "$fichier" && rm  $fichier
                        done
                done
    fi