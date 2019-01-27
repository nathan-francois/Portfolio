<?php
include("Models/profilModel.php");

// Chargement de Twig
require "chargementTwig.php";

// On charge le fichier voulus du dossier Views 
$template = $twig->load('profil.twig');

$utilisateurs1 = utilisateurs1();
$utilisateurs2 = utilisateurs2();

// On envois au fichier les données via Twig 
echo $template->render(array("utilisateur1" => $utilisateurs1,
								"utilisateurs2" => $utilisateurs2));