<?php

    session_start();
    include_once "bdd.php";
    $_SESSION['valeur'] = $_POST["valeur"] ?? '';

    // Check si l'utilisateur est connecté, le renvoie sur la page de co si ce n'est pas le cas

    if(isset($_SESSION["login"])){

        // Récupère le lien Steam du jeu

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

        $page = $resultatLien['lien_steam'] ?? 'Lien Steam';  
        
        // Gestion des jeux récents
        // Récupère les jeux récents de la BDD

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

        // Si c'est vide, on insère le nouveau jeu, sinon, on l'ajoute à ceux déjà existant

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

            // Transforme le String stocké en base en liste à nouveau

            $listeRecent = !empty($resultatRecent['recent']) 
                ? array_map('intval', explode(", ", $resultatRecent['recent'])) 
                : [];
 
            // Check si le jeu n'est pas déjà dans le tableau

            if (in_array((int)$_SESSION['valeur'], $listeRecent)){
                header("Location: $page");
                $recent = $resultatRecent['recent'];
            }
            else{
                array_unshift($listeRecent, (int)$_SESSION['valeur']);
                $recent = implode(", ", $listeRecent);
            }

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

        header("Location: $page");

    }
    else{
        header("Location: connexion.php");
    }
    
?>