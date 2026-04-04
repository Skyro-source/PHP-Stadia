<?php
    session_start();
    if(isset ($_SESSION["login"])){
        header("Location: acceuil.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter/S'inscire</title>
    <link rel="stylesheet" href="../CSS/style_inscription.css">
</head>
<body id="main">
    <header>
        <a href="acceuil.php" id="reflogo"><img id="logo" src="../Images/logo.png"></a>
        <a href="connexion.php" id="co">Connexion</a>
    </header>

    <main>
        <div class="main-child"></div>
        <div class="main-child" id="Insc">
            <div id="CoInsc">
                <p id="txtInsc">Inscription</p>
            </div>

            <div id="formInsc">
                <form action="gestion_inscription.php" method="POST">
                    <input type="text" name="nom" id="nom" placeholder="Nom">
                    <br>
                    <br>
                    <input type="text" name="prenom" id="prenom" placeholder="Prénom">
                    <br>
                    <br>
                    <input type="date" name="date_de_naissance" id="DTN" placeholder="Date de naissance">
                    <br>
                    <br>
                    <input type="text" name="pseudonyme" id="pseudo" placeholder="Pseudonyme">
                    <br>
                    <br>
                    <input type="tel" name="telephone" id="tel" placeholder="Téléphone">
                    <br>
                    <br>
                    <input type="email" name="email" id="email" placeholder="Email">
                    <br>
                    <br>
                    <input type="password" name="mdp" id="mdp" placeholder="Mot de passe">
                    <br>
                    <br>
                    <input type="password" name="mdp2" id="conf.mdp" placeholder="Confirmer le mot de passe">
                    <br>
                    <input type="submit" id="valider">
                </form>
            </div>

        </div>
        <div class="main-child"></div>     
    </main>
    <footer></footer>
</body>
</html>