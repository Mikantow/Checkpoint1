#!/bin/bash

#Checking if user already exist
function checkUsers () {

id -u "$USERS" > /dev/null 2>&1
if [ "$?" == "0" ]; then
    echo "L'utilisateur $USERS existe déjà"
    return 1
else
    return 0
fi
}


#Checking user creation 

function checkCreation (){

if [ id -u -eq "$USERS"]; then
  echo "L'utilisateur $USERS a été crée"
else
  echo "Erreur à la création de l'utilisateur $USERS"	
fi

}

#Checking for arguments

if [ "$#" -eq 0 ]; then
  echo "Il manque les noms d'utilisateurs en argument - Fin du script"
  exit
fi

#User creation
for USERS in $@; do
  checkUsers
  if [ "$?" -eq 1 ]; then
    continue
  else
    echo "$USERS"
#   sudo addgroup $@
    sudo adduser $USERS
  fi
done


