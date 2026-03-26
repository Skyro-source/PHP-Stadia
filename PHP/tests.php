<?php
// Afficher les images à partir de la BDD

session_start(); // Démarrage d'une session
include_once "bdd.php"; // Connexion à la BDD

try{
    $sql = "SELECT image, lien FROM jeu ORDER BY RAND()";
    $requete = $bdd->prepare($sql);
    $requete->execute();
    $resultat = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
}
catch(PDOException $e){
    echo "Erreur pour l'affichage";
    die($e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tests</title>
    <link href="../CSS/style_test.css" rel="stylesheet">
</head>
<body>
    <?php foreach (array_slice($resultat, 0, 8)as $row): ?>
        <a href="<?= htmlspecialchars($row['lien']) ?>" ><img src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
    <?php endforeach; ?>

</body>
</html>

