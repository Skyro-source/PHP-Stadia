<?php

    session_start();
    include_once "bdd.php";

    // Empêche l'accès à la page si l'utilisateur n'a pas encore joué à un jeu, il y'a probablement de meilleures manières de faire ça mais bon...

    $login = $_SESSION['login'];
    
    try{
        $sql = "SELECT recent FROM preferences WHERE fkUtilisateur = ($login);"; // "IN" est utilisée pour sélectionner plusieurs ID
        $requete = $bdd->prepare($sql);
        $requete->execute();
        $resultat = $requete->fetch(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }
    
    if(empty($resultat)){
        header('Location: compte.php');
    }
    else{

        $recent = implode(", ", $resultat);

        try{
            $sql = "SELECT id_jeu, image FROM jeu WHERE id_jeu IN ($recent) ORDER BY id_jeu ASC;"; // "IN" est utilisée pour sélectionner plusieurs ID
            $requete = $bdd->prepare($sql);
            $requete->execute();
            $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "Erreur pour l'affichage";
            die($e->getMessage());
        }
    }

?> 