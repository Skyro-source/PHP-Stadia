<?php

    session_start();
    include_once "bdd.php";

    try{
        $sql = "SELECT carrousel.*, jeu.nom FROM carrousel\n"
        . "INNER JOIN jeu ON carrousel.id_jeu=jeu.id_jeu
        WHERE carrousel.id_jeu = :id;";
        $requete = $bdd->prepare($sql);
        $requete->bindParam('id', $_SESSION['valeur'], PDO::PARAM_INT);
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
        }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

?>