<?php
include('Connexion.php');

function recupereFichier($idURL) {
    global $bdd;

    $requete = $bdd->prepare("SELECT url_fichier FROM data where id = ?");
    $requete->execute(array($idURL));

    $donnee = $requete->fetch();
        
    $cheminBDD = $donnee['url_fichier'];

    return $cheminBDD;
}

