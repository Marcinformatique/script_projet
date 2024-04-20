#!/bin/bash

# ceci est un commentaire
dg=$(ls -l)

echo "$dg"

if [[ -f "Notes.txt" ]];
    then
        echo "C'est bien un fichier"
    fi
