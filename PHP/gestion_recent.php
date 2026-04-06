<?php

    session_start();
    include_once "bdd.php";

    // Empêche l'accès à la page si l'utilisateur n'a pas encore joué à un jeu, il y'a probablement de meilleures manières de faire ça mais bon...

    if(empty($_SESSION['recent'])){
        header('Location: compte.php');
    }
    else{

        // Sépare l'array pour que ce soit seulement les chiffres, afin de pouvoir l'utiliser pour la requête SQL
        $id = $_SESSION['recent'];
        $temp = implode(', ', array_fill(0, count($id), '?')); 

        try{
            $sql = "SELECT id_jeu, image FROM jeu WHERE id_jeu IN ($temp);"; // "IN" est utilisée pour sélectionner plusieurs ID
            $requete = $bdd->prepare($sql);
            $requete->execute($id);
            $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "Erreur pour l'affichage";
            die($e->getMessage());
        }
    }

?> 