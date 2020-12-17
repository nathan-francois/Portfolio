<?php
include('connexionBDD.php');

function getProjets() {

    global $dbh;

    $projets = $dbh->query('SELECT * FROM projet');
    $valeur = $projets->fetchAll(PDO::FETCH_ASSOC);

    // var_dump($donnees);

    // Renvoi un tableau de donnée
    return $valeur;
}


function getProjet($colonne) {

    global $dbh;

    $projets = $dbh->query('SELECT '.$colonne.' FROM projet');
    $valeur = $projets->fetchAll();

    // var_dump($donnees);

    // Renvoi un tableau de donnée
    return $valeur;
}



// function oneProjet ($IDprojet) {

//     global $dbh;

//     $insert = $dbh->prepare ("INSERT INTO data(destinataire, expediteur, url_fichier, nom_fichier, `date`) VALUES (?,?,?,?,NOW())");
//     $insert -> execute(array($ajoutDestinataire, $ajoutExpediteur, $cheminetNomDefinitif, $ajoutNomFichier));
// 	$insert ->fetchAll();
	
// }