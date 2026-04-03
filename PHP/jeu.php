<?php

include_once "gestion_jeu_spec.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insérer le nom du jeu jeu ici</title>
    <link href="../CSS/style_jeu.css" rel="stylesheet">
</head>
<body id="main">
    <header>
        <a href="acceuil.php" id="reflogo"><img id="logo" src="../Images/logo.png"></a>
        <div id="search-wrapper">
            <input type="text" id="recherche" placeholder="Rechercher..." onkeyup="showResult(this.value)">
            <div id="livesearch"></div>
        </div>
        <div id=inscco>
            <a href="connexion.php" id="insc">Se connecter</a>
            <a href="inscription.php" id="insc">S'inscrire</a>
        </div>                
    </header>

    <?php foreach (array_slice($resultat, 0, 20)as $row): ?>
        <div class="container" id="jeu_principal">
            <div id="hero-info">
                <img id="BF6logo" src="<?= htmlspecialchars($row['logo']) ?>" alt="logo">
                <a href="<?= htmlspecialchars($row['lien_steam']) ?>" id="lien-jouer">
                    <div id="bouton_jouer">
                        <img src="../Images/Bouton_Jouer.png" id="logo_jouer" alt="logo_jouer">
                        <p id="texte_jouer">Jouer</p>
                    </div>
                </a>
                <p id="descBF6"><?= htmlspecialchars($row['description']) ?></p>
            </div>
            <div class="container" id="bannière">
                <img class="slide-banner active" src="<?= htmlspecialchars($row['image_horizontale']) ?>" alt="BF6banner">                
            </div>
        </div>  
    <?php endforeach; ?>
  
    <script src="https://code.jquery.com/jquery-4.0.0.js"></script>
    <script src="../JS/recherche.js"></script>
</body>
</html>