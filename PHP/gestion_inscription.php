<?php

    /** Vérifier que toutes les cases du formulaires sont remplies */

    if (!empty($_POST['nom']) &&
    !empty($_POST['prenom']) && 
    !empty($_POST['date_de_naissance']) && 
    !empty($_POST['pseudonyme']) && 
    !empty($_POST['telephone']) && 
    !empty($_POST['email']) && isset($_POST['mdp'])) 
    {
        echo '<p>Formulaire rempli</p>';
    } else {
        echo '<p>Erreur dans le formulaire</p>';
        die();
    }


    /** Variables des infos du formulaire, le htmlspecialchars est mis en place pour s'assurer qu'il soit traité comme du texte et éviter les injections SQL*/

    $nom = htmlspecialchars($_POST["nom"]);
    $prenom = htmlspecialchars($_POST["prenom"]);
    $DTN = htmlspecialchars($_POST["date_de_naissance"]);
    $pseudo = htmlspecialchars($_POST["pseudonyme"]);
    $telephone = htmlspecialchars($_POST["telephone"]);
    $mail = htmlspecialchars($_POST["email"]);
    $mdp = htmlspecialchars(password_hash($_POST["mdp"], PASSWORD_DEFAULT)); // Hash le mot de passe pour qu'il soit encrypté dans la BDD

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