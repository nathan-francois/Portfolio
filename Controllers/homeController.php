<?php
include('Models/projetModel.php');

// Chargement de Twig
require "Twig.php";
// =======================================================================================================
// ===================================== RECUPERATION VARIABLE DE LA BDD =================================
// =======================================================================================================
// =============================== RECUPERE TOUTES LES INFOS ================================
$allProjets = getProjets();
// var_dump($allProjets);

// =============================== VARIABLES PROJET ================================
$idProjet = getProjet('id');
$titreProjet = getProjet('titre');
$descriptionProjet = getProjet('description');
$lienGit = getProjet('liengit');
$lienProjet = getProjet('lienprojet');
$dureeProjet = getProjet('dureeprojet');
$dateProjet = getProjet('dateprojet');

// ============================ VARIABLES IMAGES PROJET ============================
$image1Projet = getProjet('image1');
$image2Projet = getProjet('image2');
$image3Projet = getProjet('image3');
$image4Projet = getProjet('image4');
// var_dump($titreProjet);


// =======================================================================================================
// ===================================== SECTION TWIG ET ENVOI A LA VIEW =================================
// =======================================================================================================

// On charge le fichier voulus du dossier Views 
$template = $twig->load('home.twig');

// Envoi des données à la View via Twig
echo $template->render(array(
    'Projets' => $allProjets,

    'idProjet' => $idProjet,
    'titreProjet' => $titreProjet,
    'descriptionProjet' => $descriptionProjet,
    'lienGit' => $lienGit,
    'lienProjet' => $lienProjet,
    'dureeProjet' => $dureeProjet,
    'dateProjet' => $dateProjet,

    'image1Projet' => $image1Projet,
    'image2Projet' => $image2Projet,
    'image3Projet' => $image3Projet,
    'image4Projet' => $image4Projet

    // "resultat" => $resultat
));