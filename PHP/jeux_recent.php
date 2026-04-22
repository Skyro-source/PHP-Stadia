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
            <?php foreach (array_slice($resultat, 0, 14) as $row): ?>
                <form method="POST" action="recup_donnees.php">
                    <button type="submit">
                        <img src="<?= htmlspecialchars($row["image"]) ?>" class="img_horizontale">
                        <input type="hidden" value="<?= htmlspecialchars($row['id_jeu'])?>" name="valeur">
                    </button>
                </form>
            <?php endforeach ?>
        </div>
    </div>
</body>
</html>