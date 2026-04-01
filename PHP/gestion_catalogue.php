<?php

    include_once "bdd.php"; // Connexion à la BDD

// Section Action

try{
    $sqlAction = "SELECT image, lien FROM jeu WHERE fkGenre = 1"; // Contrainte sur fkGenre pour seulement sortir des jeux avec le bon genre
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
    $sqlAventure = "SELECT image, lien FROM jeu WHERE fkGenre = 2";
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
    $sqlRPG = "SELECT image, lien FROM jeu WHERE fkGenre = 3";
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
    $sqlFPS = "SELECT image, lien FROM jeu WHERE fkGenre = 4";
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
    $sqlSim = "SELECT image, lien FROM jeu WHERE fkGenre = 5";
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
    $sqlStrat = "SELECT image, lien FROM jeu WHERE fkGenre = 6";
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
    $sqlSport = "SELECT image, lien FROM jeu WHERE fkGenre = 7";
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
    $sqlCourse = "SELECT image, lien FROM jeu WHERE fkGenre = 8";
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
    $sqlSurvie = "SELECT image, lien FROM jeu WHERE fkGenre = 9";
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
    $sqlHorreur = "SELECT image, lien FROM jeu WHERE fkGenre = 10";
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
    $sqlPlatforme = "SELECT image, lien FROM jeu WHERE fkGenre = 11";
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
    $sqlInde = "SELECT image, lien FROM jeu WHERE fkGenre = 12";
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
    $sqlMMO = "SELECT image, lien FROM jeu WHERE fkGenre = 13";
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
    $sqlBR = "SELECT image, lien FROM jeu WHERE fkGenre = 14";
    $requete = $bdd->prepare($sqlBR);
    $requete->execute();
    $resultatBR = $requete->fetchAll(PDO::FETCH_ASSOC);
}
catch(PDOException $e){
    echo "Erreur pour l'affichage";
    die($e->getMessage());
}
?>
