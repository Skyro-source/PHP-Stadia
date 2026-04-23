<?php
    include_once "gestion_recent.php";
    if(!isset ($_SESSION["login"])){
        header("Location: acceuil.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jeux récents</title>
    <link rel="stylesheet" href="../CSS/style_recent.css"
</head>
<body>
    <header>
        <a class="bouton_a" href="acceuil.php">Retour à l'acceuil</a>
        <a class="bouton_a" id="deco" href="deconnexion.php">Se déconnecter</a>
    </header>

    <div id="switch">
        <a class="bouton_a" id="compte" href="compte.php">Compte</a>
        <p class="bouton_a" id="jeux_recent">Jeux récents</p>
    </div>

    <div id="recent">
        <h1>Jeux récents</h1>
        <div id="recent_detail">
            <?php if($booleanRecent == 1): ?>
                <div id="null">
                    <h1>Vous n'avez joué à aucun jeu.</h1>
                    <p id="p_null">Allez jouer à un jeu pour le voir apparaître ici.</p>
                </div>
            <?php else: ?>
                <?php foreach (array_slice($affichage, 0, 14) as $row): ?>
                    <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                        <img class="img_horizontale" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                    </a>
                <?php endforeach ?>
            <?php endif ?>
        </div>
    </div>
</body>
</html>