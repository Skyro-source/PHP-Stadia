<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter/S'inscire</title>
<<<<<<< HEAD
    <link rel="stylesheet" href="../CSS/style_inscription.css">
</head>
<body id="main">
    <header>
        <a href="page_principale.php" id="reflogo"><img id="logo" src="../Images/logo.png"></a>
        <a href="connexion.php" id="co">Connexion</a>
=======
    <link rel="stylesheet" href="style_inscription.css">
</head>
<body id="main">
    <header>
        <a href="TD_Final.html" id="reflogo"><img id="logo" src="logo.png"></a>
        <a href="connexion.html" id="co">Connexion</a>
>>>>>>> de134f6881267e8c7dd0c706f195568e9afe43e4
    </header>

    <main>
        <div class="main-child"></div>
        <div class="main-child" id="Insc">
            <div id="CoInsc">
                <p id="txtInsc">Inscription</p>
            </div>

            <div id="formInsc">
                <form action="gestion_inscription.php" method="POST">
                    <label for="nom">Nom</label>
                    <input type="text" name="nom" id="nom">
                    <label for="prenom">Prénom</label>
                    <input type="text" name="prenom" id="prenom">
                    <label for="DTN">Date de naissance</label>
                    <input type="date" name="date_de_naissance" id="DTN">
                    <label for="pseudo">Pseudonyme</label>
                    <input type="text" name="pseudonyme" id="pseudo">
                    <label for="tel">Téléphone</label>
                    <input type="tel" name="telephone" id="tel">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                    <label for="mdp">Mot de passe</label>
                    <input type="password" name="mdp" id="mdp">
                    <label for="conf.mdp">Confirmer le mot de passe</label>
                    <input type="password" name="mdp2" id="conf.mdp">
                    <input type="submit" id="valider">Valider</a>
                </form>
            </div>

        </div>
        <div class="main-child"></div>     
    </main>
    <footer></footer>
</body>
</html>