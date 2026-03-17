<?php

// Gestion à la connexion

session_start(); // Démarrage d'une session
include_once "bdd.php"; // Connexion à la BDD

if ($_SERVER["REQUEST_METHOD"] === "POST"){

    if(isset($_POST["email"] && $_POST["mdp"])){ // Check si l'utilisateur à rempli les champs

        $mail = htmlspecialchars($_POST["email"]); // Récupère l'email donné dans le formulaire

        // Cherche l'utilisateur dans la BDD

        $requete = $bdd->prepare("SELECT * FROM utilisateurs WHERE email = ?");
        $requete->execute([$mail]);
        $utilisateur = $requete->fetch();

        // Vérification du mot de passe

        if ($mail && password_verify($POST["mdp"], ))

    }
}



?>