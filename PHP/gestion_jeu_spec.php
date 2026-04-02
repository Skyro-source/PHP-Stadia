<?php

    session_start();
    include_once "bdd.php";
    echo $_SESSION['valeur'];

    try{
        $sql = "SELECT image FROM jeu WHERE id_jeu = :id";
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