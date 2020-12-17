<?php

// Chargement de Twig
require "Twig.php";

// On charge le fichier voulus du dossier Views 
$template = $twig->load('profil.twig');


// On envois au fichier les données via Twig
echo $template->render(array(""));