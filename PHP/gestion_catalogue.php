<?php

session_start();
include_once "bdd.php";

// Autocomplétion de l'éditeur
if (isset($_POST['suggestion_editeur']) && !empty($_POST['suggestion_editeur'])) {
    $editeur = $_POST['suggestion_editeur'] . '%';
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
    exit;
}

// Autocomplétion du développeur
if (isset($_POST['suggestion_developpeur']) && !empty($_POST['suggestion_developpeur'])) {
    $developpeur = $_POST['suggestion_developpeur'] . '%';
    $sql = "SELECT DISTINCT nom FROM developpeur WHERE nom LIKE ?";
    $requete = $bdd->prepare($sql);
    $requete->execute([$developpeur]);
    $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);

    if (count($resultat) > 0) { ?>
        <div class="suggestion">
            <?php foreach ($resultat as $row) { ?>
                <div onclick="selectDeveloppeur('<?= htmlspecialchars($row['nom']) ?>')"><?= htmlspecialchars($row['nom']) ?></div>
            <?php } ?>
        </div>
    <?php }
    exit;
}

// Requête principale pour afficher les jeux

$genre = (isset($_POST['genre']) && $_POST['genre'] !== '')
    ? htmlspecialchars($_POST['genre'])
    : null;

$editeur = (isset($_POST['editeur']) && $_POST['editeur'] !== '')
    ? '%' . htmlspecialchars($_POST['editeur']) . '%'
    : null;

$developpeur = (isset($_POST['developpeur']) && $_POST['developpeur'] !== '')
    ? '%' . htmlspecialchars($_POST['developpeur']) . '%'
    : null;

try {
    $sql = "SELECT image, lien FROM vue_jeux_complets 
            WHERE (? IS NULL OR genre = ?)
            AND (? IS NULL OR editeur LIKE ?)
            AND (? IS NULL OR developpeur LIKE ?)
            ORDER BY nom_jeu ASC";
    $requete = $bdd->prepare($sql);
    $requete->execute([$genre, $genre, $editeur, $editeur, $developpeur, $developpeur]);
    $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);

    foreach ($resultat as $jeu) {
        echo '<a href="' . htmlspecialchars($jeu['lien']) . '">';
        echo '<img id="jeu" src="' . htmlspecialchars($jeu['image']) . '">';
        echo '</a>';
    }
} catch (PDOException $e) {
    echo "Erreur pour l'affichage";
    die($e->getMessage());
}

?>
