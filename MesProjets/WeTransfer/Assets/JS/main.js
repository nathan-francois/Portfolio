var formulaire = document.querySelector("#contact");

formulaire.addEventListener("submit", function(evenement) {
    verif_formulaire(formulaire, evenement);
});

function verif_formulaire(formulaire, evenement) {
    var expediteur = formulaire.querySelector("#mailE"),
        destinataire = formulaire.querySelector("#mailD"),
        nomFichier = formulaire.querySelector("#nomFichier"),
        messageExpediteur = formulaire.querySelector("#expediteurErreur"),
        messageDestinataire = formulaire.querySelector("#destinataireErreur"),
        messagenomFichier = formulaire.querySelector("#nomFichierErreur");


    if((expediteur.value.length < 6) || (expediteur.value.indexOf('@') == -1))  {
    
        messageExpediteur.innerHTML = "Votre adresse mail est non conforme!";
        evenement.preventDefault();
    
    }
    if ((destinataire.value.length < 6) || (destinataire.value.indexOf('@') == -1)) {
    
        messageDestinataire.innerHTML = "L'adresse mail du destinataire est non conforme!";
        evenement.preventDefault();
    
    }
    if ((nomFichier.value.length < 2) || (nomFichier.value.indexOf (' ') !== -1)) {
    
        messagenomFichier.innerHTML = "Le nom du fichier est trop court ou avec un espace!";
        evenement.preventDefault();
    
    }
}