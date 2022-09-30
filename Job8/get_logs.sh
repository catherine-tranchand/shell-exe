#!/bin/zsh 

# J'ai créé le fichier avec la bonne date
datevar=$(date +'%d-%m-%Y-%H-%M')
last grep "ekaterinatranchand" | wc -l > number_connection-$datevar

# je crée Backup si il n'existe pas
# -! -d pour vérifier que le fichier n'existe pas 
    if [ -! -d "Backup"];
    then mkdir Backup
    fi

# J'archive le fichier et le deplace dans Backup
tar -cf number_connection-$datevar.tar number_connection-$datevar
mv number_connection-$datevar.tar ./Backup/ 
rm number_connection-$datevar
