<?php include('Contenus/headerContact.php')?>

<div class="container-fluid" id="pageContact">

    <div  id="rowContact" class="row">
        
        <div id="formulaireContact" class="col-sm-12 col-md-12 col-lg-9" >
            <h2>Formulaire de Contact</h2>
            
            <div id="parentContact">
                <form id="formulaire" name='formulaire' action="contact" method="POST">
                    <label for="nom">Nom :</label> <br>
                    <input type="text" name="nom" id='nom'> <br>

                    <label for="entreprise">Entreprise :</label> <br>
                    <input type="text" name="entreprise" id="entreprise"> <br>

                    <label for="mail">E-mail :</label> <br>
                    <input type="text" name="mail" id="mail"> <br>

                    <label for="message">Message :</label> <br>
                    <textarea name="message" id="message" rows="60";></textarea> <br>
                    
                    <button type="submit" value="Envoyer" class="btn btn-dark pull-right">Valider</button>
                </form>
            </div>
        </div>

        <div id="coordonnee" class="col-sm-12 col-md-12 col-lg-3">
            <div id="coordonneeBis">
                <h2><a class="nom nomDark" id="nomDesktop" href="?page=home">Nathan François</a></h2>

                <div id="infoCoordonnee">
                    <div id="mail">
                    <h3>E-MAIL</h3> 
                        <p id="monMail">francois.nathan@gmail.com</p> 
                    </div>
                    <div>
                        <h3>GITHUB</h3>
                        <a href=""><img src="Assets/Images/logo1.png" alt="logoGitHub"></a>
                    </div>
                    <div>
                        <h3>LINKEDIN</h3>
                        <a href=""><img src="Assets/Images/logo2.png" alt="logoLinkedin"></a>
                    </div>
                </div>
            </div>
        </div>

    </div> <!-- Fin Row -->
    
</div> <!-- Fin Container -->

<script src="Assets/JS/mail.js"></script>

<?php include('Contenus/footer.php')?>