<?php
    include_once "bdd.php";

    $q = $_GET['q'];

    try{
        $sql = "SELECT id_jeu, nom FROM jeu WHERE nom LIKE :jeu ";
        $requete = $bdd->prepare($sql);
        $q = "%".$q."%";
        $requete->bindParam(":jeu", $q, PDO::PARAM_STR);
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);

        $resultat = $resultat;

        echo json_encode($resultat);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

?>