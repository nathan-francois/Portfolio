<?php

// Chargement de Twig
require "chargementTwig.php";

// On charge le fichier voulus du dossier Views 
$template = $twig->load('contact.twig');


if (isset($_POST['message'])) {
    $email_destinataire = "francois.nathan0@gmail.com";
    $sujetMail = "OFFRE EMPLOI PORTFOLIO";

    // Transforme les valeurs Post en variables, évite la faille XSS avec htmlspecialchars
    $nom = htmlspecialchars($_POST['nom']);
    $entreprise = htmlspecialchars($_POST['entreprise']);
    $mail = htmlspecialchars($_POST['mail']);
    $message = htmlspecialchars($_POST['message']);


    if(isset($nom, $entreprise, $mail, $message)) {
        
        $mailText = "Nom : " . $nom .
            " || Entreprise : " . $entreprise .
            " || Email : " . $mail .
            " || Message : " . $message;

        $email = mail($email_destinataire, $sujetMail, $mailText);
        
        if($email){

            // On envois au fichier les données via Twig
            echo $template->render(array("reponse" => 'Votre message à été envoyé'));  
        }
        else {
            // On envois au fichier les données via Twig
            echo $template->render(array("reponse" => 'Erreur'));  
        }
    }
}

echo $template->render(array(""));  