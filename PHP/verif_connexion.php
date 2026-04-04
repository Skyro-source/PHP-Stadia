<?php

    session_start();
    include_once "bdd.php";

    if(isset($_SESSION["login"])){
        try{
        $sql = "SELECT lien_steam FROM carrousel WHERE id_jeu = :id;";
        $requete = $bdd->prepare($sql);
        $requete->bindParam('id', $_SESSION['valeur'], PDO::PARAM_INT);
        $requete->execute();
        $resultat = $requete->fetch(PDO::FETCH_ASSOC); 
        }catch(PDOException $e){
            echo "Erreur pour l'affichage";
            die($e->getMessage());
        }

        $page = $resultat['lien_steam'] ?? 'Lien Steam';

        header("Location: $page");

    }
    else{
        header("Location: connexion.php");
    }
    
?>