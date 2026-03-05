<?php
   /** Variables des infos du formulaire*/

    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $DTN = $_POST["date_de_naissance"];
    $pseudo = $_POST["pseudonyme"];
    $telephone = $_POST["telephone"];
    $mail = $_POST["email"];
    $mdp = $_POST["mot_de_passe"]; 

    include_once("bdd.php");
    /** Enregistrement des données sur la base SQL*/

    $sql = "INSERT INTO utilisateurs (nom, prenom, date_de_naissance, pseudonyme, telephone, email, mot_de_passe)
            VALUES (:nom, :prenom, :DTN, :pseudo, :telephone, :mail, :mdp)";
    $requete = $bdd=prepare($sql);
    $sth->bindParam('nom', $nom, PDO::PARAM_STR);
    $sth->bindParam('prenom', $prenom, PDO::PARAM_STR);
    $sth->bindParam('date_de_naissance', $DTN, PDO::PARAM_INT);
    $sth->bindParam('pseudonyme', $pseudo, PDO::PARAM_STR);
    $sth->bindParam('telephone', $telephone, PDO::PARAM_INT);
    $sth->bindParam('email', $mail, PDO::PARAM_STR);
    $sth->bindParam('mot_de_passe', $mdp, PDO::PARAM_STR);   
    $requete = execute();
    $resultat = $requete=fetchAll();  
?>