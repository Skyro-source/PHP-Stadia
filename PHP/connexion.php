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
    <link rel="stylesheet" href="../CSS/style_connexion.css">
</head>
<body>
    <header>
        <a href="acceuil.php" id="reflogo"><img id="logo" src="../Images/logo.png"></a>
        <a href="inscription.php" id="insc">Inscription</a>
    </header>

    <main>
        <div class="main-child"></div>
        <div class="main-child" id="co">
            <p id="txtCo">Connexion<p>

            <div id="formCo">
                <form action="gestion_connexion.php" method=POST>
                    <input type="email" name="email" id="email" placeholder="Email">
                    <br>
                    <br>
                    <input type="password" name="mdp" id="mdp" placeholder="Mot de passe">
                    <input type="submit" id="valider">
                </form>
            </div>

        </div>
        <div class="main-child"></div>
    </main>

     <footer></footer>
</body>
</html>