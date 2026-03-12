<?php

    /** Variables des infos du formulaire*/

    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $DTN = $_POST["date_de_naissance"];
    $pseudo = $_POST["pseudonyme"];
    $telephone = $_POST["telephone"];
    $mail = $_POST["email"];
    $mdp = $_POST["mdp"]; 

    include_once("bdd.php");

    /** Enregistrement des données sur la base SQL*/

    try{
        $sql = "INSERT INTO utilisateurs (nom, prenom, date_de_naissance, pseudonyme, telephone, email, mot_de_passe)
        VALUES (:nom, :prenom, :DTN, :pseudo, :telephone, :mail, :mdp);";
        $requete = $bdd->prepare($sql);
        $requete->bindParam('nom', $nom, PDO::PARAM_STR);
        $requete->bindParam('prenom', $prenom, PDO::PARAM_STR);
        $requete->bindParam('DTN', $DTN, PDO::PARAM_STR);
        $requete->bindParam('pseudo', $pseudo, PDO::PARAM_STR);
        $requete->bindParam('telephone', $telephone, PDO::PARAM_STR);
        $requete->bindParam('mail', $mail, PDO::PARAM_STR);
        $requete->bindParam('mdp', $mdp, PDO::PARAM_STR);   
        $requete->execute();

    }catch(PDOException $e){
        echo "perdu";
        die($e->getMessage());

    }

?>