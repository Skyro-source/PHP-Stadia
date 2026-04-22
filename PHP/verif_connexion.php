<?php

    session_start();
    include_once "bdd.php";

    if(isset($_SESSION["login"])){
        try{
            $sqlLien = "SELECT lien_steam FROM carrousel WHERE id_jeu = :idJeu;";
            $requete = $bdd->prepare($sqlLien);
            $requete->bindParam('idJeu', $_SESSION['valeur'], PDO::PARAM_INT);
            $requete->execute();
            $resultatLien = $requete->fetch(PDO::FETCH_ASSOC); 
        }catch(PDOException $e){
            echo "Erreur pour la redirection";
            die($e->getMessage());
        }

        try{
            $sqlRecent = "SELECT recent FROM preferences WHERE fkUtilisateur = :idUtilisateur;";
            $requete = $bdd->prepare($sqlRecent);
            $requete->bindParam('idUtilisateur', $_SESSION['login'], PDO::PARAM_INT);
            $requete->execute();
            $resultatRecent = $requete->fetch(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            echo "Erreur pour l'enregistrement du jeu récent";
            die($e->getMessage());
        }

        if (empty($resultatRecent)) {

            try{
                $sqlInsert = "INSERT INTO preferences (fkUtilisateur, recent, favori)
                VALUES (:idUtilisateur, :recent, 0)";
                $requete = $bdd->prepare($sqlInsert);
                $requete->bindParam(':idUtilisateur', $_SESSION['login'], PDO::PARAM_INT);
                $requete->bindParam(':recent', $_SESSION['valeur'], PDO::PARAM_INT);
                $requete->execute();
            }catch(PDOException $e){
                echo "Erreur pour l'enregistrement du jeu récent";
                die($e->getMessage());
            }

        }
        else{

            array_unshift($resultatRecent, $_SESSION['valeur']);
            $recent = implode(", ", $resultatRecent);

            try{
                $sqlUpdate = "UPDATE preferences SET recent = :recent WHERE fkUtilisateur = :idUtilisateur;";
                $requete = $bdd->prepare($sqlUpdate);
                $requete->bindParam(':idUtilisateur', $_SESSION['login'], PDO::PARAM_INT);
                $requete->bindParam(':recent', $recent, PDO::PARAM_STR);
                $requete->execute();
            }catch(PDOException $e){
                echo "Erreur pour l'enregistrement du jeu récent";
                die($e->getMessage());
            }
        }

        $page = $resultatLien['lien_steam'] ?? 'Lien Steam';   

        header("Location: $page");

    }
    else{
        header("Location: connexion.php");
    }
    
?>