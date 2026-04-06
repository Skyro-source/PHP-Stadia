<?php   

    session_start();
    include_once "bdd.php";

    try{
        $sql = "SELECT idUtilisateur, nom, prenom, date_de_naissance, pseudonyme, telephone, email FROM utilisateurs WHERE email = :mail;";
        $requete = $bdd->prepare($sql);
        $requete->bindParam('mail', $_SESSION['login'], PDO::PARAM_STR);
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);
    }catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }
    
?>