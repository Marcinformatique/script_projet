#!/bin/bash

if [[ -f "Notes.txt" ]];
    then
        echo "C'est bien un fichier"
    fi

if [[ -d "Notes.txt" ]];
    then 
        echo "C'est un dossier !"
    else
        echo "Ce n'est pas un dossier !"
    fi

    #boucle for pour test sur des fichiers
count=0
for file in $(find ~)
   do 
    if [[ -f $file ]];
        then
        (( count++ ))
        fi
   done

echo "Le nombre de fichier est de $count"