<?php

/***************************/
/*** initialisation Twig ***/
/***************************/

// Charge l'autoloader permettant de charger les classes de TWIG
require 'vendor/autoload.php';

// Indique a Twig le nom du fichier Views
$loader = new Twig_Loader_Filesystem('Templates'); 


// INITIALISE TWIG = ($loader, tableau d'option environnement)
$twig = new Twig_Environment($loader, [

    // N'active pas le cache (mieux pour le développement)
    'debug'=> true,
    'cache'=>false,
    
    // Active une mémoire cache dans le dossier actuel et il sera nommé tmp
    // 'cache'=> __DIR__ . '/tmp'

]);
$twig->addExtension(new Twig_Extension_Debug());