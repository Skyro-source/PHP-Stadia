<?php

    session_start();
    include_once "bdd.php";

    $login = $_SESSION['login'];
    $booleanRecent = 0;
    
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
        $booleanRecent = 1;
    }
    else{
        $recent = implode(", ", $resultat);

        try{
            $sql = "SELECT id_jeu, image FROM jeu WHERE id_jeu IN ($recent) ORDER BY id_jeu ASC;"; // "IN" est utilisée pour sélectionner plusieurs ID
            $requete = $bdd->prepare($sql);
            $requete->execute();
            $affichage = $requete->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "Erreur pour l'affichage";
            die($e->getMessage());
        }    
    }

?> 