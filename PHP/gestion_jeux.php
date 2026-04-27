<?php

// Section "jeux populaires, vraiment ça prends juste n'importe quel jeu dans la BDD

    include_once "bdd.php"; // Connexion à la BDD

    try{
        $sqlPopulaire = "SELECT id_jeu, image, lien FROM jeu ORDER BY RAND() LIMIT 10"; // Variable aléatoire afin de constamment sortir une nouvelle image à l'utilisateur
        $requete = $bdd->prepare($sqlPopulaire);
        $requete->execute();
        $resultatPopulaire = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
        }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Action

    try{
        $sqlAction = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 1 ORDER BY nom ASC"; // Contrainte sur fkGenre pour seulement sortir des jeux avec le bon genre
        $requete = $bdd->prepare($sqlAction);
        $requete->execute();
        $resultatAction = $requete->fetchAll(PDO::FETCH_ASSOC);
        }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Aventure

    try{
        $sqlAventure = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 2 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlAventure);
        $requete->execute();
        $resultatAventure = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section RPG

    try{
        $sqlRPG = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 3 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlRPG);
        $requete->execute();
        $resultatRPG = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section FPS
    
    try{
        $sqlFPS = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 4 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlFPS);
        $requete->execute();
        $resultatFPS = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Simulation

    try{
        $sqlSim = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 5 ORDER BY nom ASC LIMIT 20";
        $requete = $bdd->prepare($sqlSim);
        $requete->execute();
        $resultatSim = $requete->fetchAll(PDO::FETCH_ASSOC);
        }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Stratégie

    try{
        $sqlStrat = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 6 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlStrat);
        $requete->execute();
        $resultatStrat = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Sport    

    try{
        $sqlSport = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 7 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlSport);
        $requete->execute();
        $resultatSport = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Course

    try{
        $sqlCourse = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 8 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlCourse);
        $requete->execute();
        $resultatCourse = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Survie    

    try{
        $sqlSurvie = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 9 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlSurvie);
        $requete->execute();
        $resultatSurvie = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Horreur

    try{
        $sqlHorreur = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 10 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlHorreur);
        $requete->execute();
        $resultatHorreur = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Plateforme

    try{
        $sqlPlatforme = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 11 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlPlatforme);
        $requete->execute();
        $resultatPlateforme = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Indépendant

    try{
        $sqlInde = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 12 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlInde);
        $requete->execute();
        $resultatInde = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section MMO

    try{
        $sqlMMO = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 13 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlMMO);
        $requete->execute();
        $resultatMMO = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

// Section Battle Royale

    try{
        $sqlBR = "SELECT id_jeu, image, lien FROM jeu WHERE fkGenre = 14 ORDER BY nom ASC";
        $requete = $bdd->prepare($sqlBR);
        $requete->execute();
        $resultatBR = $requete->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }
?>



