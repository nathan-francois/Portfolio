<?php
include('Connexion.php');

function insertName($ajoutDestinataire, $ajoutExpediteur, $cheminetNomDefinitif, $ajoutNomFichier, $idBDD) {
    global $bdd;
    
    $insert = $bdd->prepare ("INSERT INTO data(destinataire, expediteur, url_fichier, nom_fichier, id, `date`) VALUES (?,?,?,?,?,NOW())");
    $insert -> execute(array($ajoutDestinataire, $ajoutExpediteur, $cheminetNomDefinitif, $ajoutNomFichier, $idBDD));

    $insert ->fetchAll();
}

function recupereFichier($idBDD) {
    global $bdd;

    $requete = $bdd->prepare("SELECT url_fichier FROM data where id = ?");

    if ($requete->execute(array($idBDD))) {
    
        while ($donnee = $requete->fetch()) {
        
            $cheminBDD = $donnee['url_fichier'];
        
        }
    }
    return $cheminBDD;
}