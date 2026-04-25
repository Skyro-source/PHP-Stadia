<?php
    include_once "gestion_compte.php";
    unset($_SESSION["erreur"]);
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
    <title>Compte</title>
    <link rel="stylesheet" href="../CSS/style_compte.css"
</head>
<body>
    <header>
        <a class="bouton_a" href="acceuil.php">Retour à l'acceuil</a>
        <a class="bouton_a" id="deco" href="deconnexion.php">Se déconnecter</a>
    </header>

    <div id="switch">
        <p class="bouton_a" id="compte">Compte</p>
        <a class="bouton_a" id="jeux_recent" href="jeux_recent.php">Jeux récents</a>
    </div>

    <div id="infos">
        <h1 align="center">Informations du compte</h1>
        <div id="infos_detail">
            <?php foreach (array_slice($resultat, 0, 6) as $row): ?>
                <p class="info_p"><strong>ID du compte : </strong> <?= htmlspecialchars($row["idUtilisateur"]) ?> </p>
                <p class="info_p"><strong>Nom : </strong> <?= htmlspecialchars($row["nom"]) ?> </p>
                <p class="info_p"><strong>Prénom : </strong> <?= htmlspecialchars($row["prenom"]) ?> </p>
                <p class="info_p"><strong>Date de naissance : </strong> <?= htmlspecialchars($row["date_de_naissance"]) ?> </p>
                <p class="info_p"><strong>Pseudonyme : </strong> <?= htmlspecialchars($row["pseudonyme"]) ?> </p>
                <p class="info_p"><strong>Email : </strong> <?= htmlspecialchars($row["email"]) ?> </p>
                <p class="info_p"><strong>Téléphone : </strong> <?= htmlspecialchars($row["telephone"]) ?> </p>
            <?php endforeach; ?>
        </div>  
    </div>
</body>
</html>