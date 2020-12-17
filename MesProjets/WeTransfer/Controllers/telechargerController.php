<?php
include('Models/telechargerModel.php');

// ========================================= RECUPERE DEPUIS LA BDD ============================================

$idURL = $_GET['id'];

if (isset($idURL)) {

    $cheminBDD = recupereFichier($idURL);

}
else{

    $message = "Suite à une erreur, le fichier n'a pas pu être telecharger.";

}

include('Views/telechargerView.php');