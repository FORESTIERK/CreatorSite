#!/bin/sh

#============= Date et Heure ==============#
date "+%A %d %B %Y %H:%M:%S"

#============= Création de Dossier =============#
echo ""
echo "\033[1;35m<*>==========================================================================<*>"
echo "\033[33m        Voulez-vous crée les dossiers pour configuer votre site ? \033[1;36mY\033[33m/\033[1;31mN \033[33m:"
echo "\033[1;35m<*>==========================================================================<*>\033[1;34m"
echo ""
read ouinon
if [ "$ouinon" = "y" ] || [ "$ouinon" = "Y" ]; then

	echo ""
	echo "\033[1;35m<*>==========================================================================<*>"
	echo "\033[1;32m                             Nom de votre dossier :                             "
	echo "\033[1;35m<*>==========================================================================<*>\033[1;34m"
	echo ""

	read nom
	mkdir -p $nom
	mkdir -p $nom/css
	mkdir -p $nom/css/imgcss
	mkdir -p $nom/js
	mkdir -p $nom/images
	mkdir -p $nom/php
	touch $nom/index.html
	touch $nom/css/style.css
	touch $nom/js/script.js
	touch $nom/js/jquery.js
	touch $nom/php/index.php
	echo ""
	echo "\033[1;35m<*>==========================================================================<*>"
	echo "\033[1;33m                                C'est parti !                                   "
	echo "\033[1;35m<*>==========================================================================<*>"
	echo ""

#============= Progression =============#
echo "\033[1;32mCréation des fichiers en cours...."
sleep 2s;echo "10%"
sleep 2s;echo "30%"
sleep 2s;echo "50%"
sleep 2s;echo "70%"
sleep 2s;echo "90%"
sleep 2s;echo "Création Terminer !"
sleep 4s;
#============= Fin de Progréssion =============#

##============= Suite Création de Dossier =============#

elif [ "$ouinon" = "n" ] || [ "$ouinon" = "N" ]; then

	echo "\033[36mAh ! Vous avez pas envie de travailler ! Vous allez pas vous améliorez !"

#============= Message d'Erreur =============#
else
	echo "\033[35mOups vous vous êtes tromper apparament ! Vous devez tapez la touche 'y' ou 'n' !"

fi

EXIT 0
