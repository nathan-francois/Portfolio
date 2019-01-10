<?php

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
            echo 'Votre message a été envoyé';
        }
        else {
            echo 'Erreur';
        }

    }
}


include('Views/contactView.php');