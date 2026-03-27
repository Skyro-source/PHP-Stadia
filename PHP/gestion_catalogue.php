<?php

// Requête pour chercher les jeux

    include_once "bdd.php"; // Connexion à la BDD

    try{        
        $sql = "SELECT image, lien FROM vue_jeux_complets WHERE editeur LIKE '%' ORDER BY nom_jeu ASC"; 
        // Utilisation de LIKE pour avoir un nom approximatif
        $requete = $bdd->prepare($sql);                                             
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }   
    
    
?>