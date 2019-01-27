<?php

// Chargement de Twig
require "chargementTwig.php";

// On charge le fichier voulus du dossier Views 
$template = $twig->load('home.twig');


// On envois au fichier les données via Twig
echo $template->render(array(""));