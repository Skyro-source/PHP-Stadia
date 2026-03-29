<?php
session_start();
include_once "bdd.php";

if (isset($_POST['editeur']) && !empty($_POST['editeur'])) {

    $editeur = $_POST['editeur'] . '%';

    $sql = "SELECT DISTINCT nom FROM editeur WHERE nom LIKE ?";
    $requete = $bdd->prepare($sql);
    $requete->execute([$editeur]);
    $resultat = $requete->fetchAll(PDO::FETCH_ASSOC); 

    if (count($resultat) > 0) { ?>
        <div class="suggestion">
            <?php foreach ($resultat as $row) { ?>
                <div onclick="selectEditeur('<?= htmlspecialchars($row['nom']) ?>')"><?= htmlspecialchars($row['nom']) ?></div>
            <?php } ?>
        </div>
    <?php }
}
?>