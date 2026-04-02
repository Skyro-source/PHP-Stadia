<?php

include_once "gestion_jeu_spec.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php foreach (array_slice($resultat, 0, 20)as $row): ?>
        <img src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">
    <?php endforeach; ?>
</body>
</html>