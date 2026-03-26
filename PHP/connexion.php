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
        <a href="page_principale.php" id="reflogo"><img id="logo" src="../Images/logo.png"></a>
        <a href="inscription.php" id="insc">Inscription</a>
    </header>

    <main>
        <div class="main-child"></div>
        <div class="main-child" id="co">
            <p id="txtCo">Connexion<p>

            <div id="formCo">
                <form action="gestion_connexion.php" method=POST>
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                    <br>
                    <label for="mdp">Mot de passe</label>
                    <input type="password" name="mdp" id="mdp">
                    <input type="submit" id="valider"></a>
                </form>
            </div>

        </div>
        <div class="main-child"></div>
    </main>

     <footer></footer>
</body>
</html>