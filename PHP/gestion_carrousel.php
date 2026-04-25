<?php

    error_reporting(0); 
    ini_set('display_errors', 0);

    include 'bdd.php'; 

    try {
        $sql = "SELECT id_jeu, image_horizontale, logo, description FROM carrousel ORDER BY RAND() LIMIT 5";
        $requete = $bdd->prepare($sql); 
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);

        header('Content-Type: application/json');
        echo json_encode($resultat);

    } catch (Exception $e) {
        header('Content-Type: application/json');
        echo json_encode(['error' => $e->getMessage()]);
    }
?>
