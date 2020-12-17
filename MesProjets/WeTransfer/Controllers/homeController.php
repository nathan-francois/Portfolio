<?php
include('Models/homeModel.php');

/** Ici, on définit le dossier qu'on veut parcourir **/
$dir = "telecharger/Stockage/";

/*** Boucle dans le dossier pour les fichiers de toutes extensions***/
foreach (glob($dir."*") as $file) {

    /*** Si le fichier est présent dans le dossier depuis + de 24 heures (86400s) on le supprime ***/
    if(time() - filectime($file) > 86400){
        unlink($file);
    }
}

include('Views/homeView.php');
?> 

