<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>R&M Transfer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="Assets/CSS/main.css" />
    <link rel="shortcut icon" href="Assets/Images/icone.ico" />
    <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand justify-content-md-center">
        <a href="https://web-developpement.eu/MesProjets/WeTransfer/index.php"><img class="logoH" id="logoH" src="Assets/Images/logo.png"></a>
        </nav>
    </header>


    <div class="container">
        <form id="contact" action="resultat" method="post" enctype="multipart/form-data">

            <h3><a href="https://web-developpement.eu/MesProjets/WeTransfer/index.php"><img class="logo" id="logo" src="Assets/Images/logo.png"></a></h3>
            <h4 class="francais">Transférez vos fichiers, simplement.</h4>

                <!-- Email Expediteur -->
            <div id="expediteurErreur" class="messageErreur"></div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <label for="email" id="email" class="mdl-textfield__label francais">Votre email</label>
                <!-- <label for="email" id="email" class="mdl-textfield__label anglais">Your Email</label> -->
                <input class="mdl-textfield__input" type="text" maxlength='30' id="mailE" name="expediteur">
                <p class="errorMessage"></p>
            </div>

                <!-- Email Destinataire -->
            <div id="destinataireErreur" class="messageErreur"></div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <label for="destinataire" id="destinataire" class="mdl-textfield__label francais">Email du destinataire</label>
                <!-- <label for="destinataire" id="destinataire" class="mdl-textfield__label anglais">Recipient Email</label> -->
                <input class="mdl-textfield__input" type="text" maxlength='30' id="mailD" name="destinataire"/>
                <p class="errorMessage"></p>
            </div>

                <!-- Le champ nom du fichier -->
            <div id="nomFichierErreur" class="messageErreur"></div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <label for="up" id="fileName" class="mdl-textfield__label francais">Nommez votre fichier</label>
                <!-- <label for="up" id="fileName" class="mdl-textfield__label anglais">Name of the file</label> -->
                <input class="mdl-textfield__input" type="text" maxlength='20' name="fileName" id="nomFichier">
                <p class="errorMessage"></p>
            </div>

                <!-- Le bouton permettant de linker le fichier -->
            <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
                <i class="material-icons ">attach_file</i>
                <input type="file" name="fichier_upload" multiple="multiple">
            </div>
                

                <!-- Le bouton envoyer -->
            <div> 
                <fieldset>
                        <button name="submitBtn" type="submit" id="contact-submit" data-submit="...Sending" class="francais mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">Transférer
                    </button>
                </fieldset>
            </div>
        </form>
    </div> <!-- Fin div container -->


    <script src="Assets/JS/main.js"></script>
</body>
</html>