<?php
    include_once "gestion_catalogue.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogue</title>
    <link rel="stylesheet" href="../CSS/style_catalogue.css">
</head>
<body>
    <header>
        <img id="logo" src="../Images/logo.png" alt="logo">
        <a href="connexion.php" id="insc">Se connecter/S'inscrire</a>
    </header>

<!-- Section de filtrage --> 

    <div id="filtrage">

    </div>

<!-- Section d'affichage des jeux -->

    <div id="jeux">
        <?php foreach ($resultat as $row): ?>
            <a href="<?= htmlspecialchars($row['lien']) ?>"><img id=jeu src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
        <?php endforeach; ?>

    </div>
</body>
</html>