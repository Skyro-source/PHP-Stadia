<?php

    session_start();
    include_once "bdd.php";

    try{
        $sql = "SELECT carrousel.*, jeu.nom, jeu.image, jeu.note, jeu.date_de_sortie, genre.libelle, developpeur.nom AS developpeur_nom, editeur.nom AS editeur_nom FROM carrousel\n"

        . "INNER JOIN jeu ON carrousel.id_jeu=jeu.id_jeu\n"

        . "INNER JOIN developpe ON carrousel.id_jeu=developpe.id_jeu\n"

        . "INNER JOIN developpeur ON developpe.id_developpeur=developpeur.id_developpeur\n"

        . "INNER JOIN edite ON carrousel.id_jeu=edite.id_jeu\n"

        . "INNER JOIN editeur ON edite.id_editeur=editeur.id_editeur\n"

        . "INNER JOIN genre ON jeu.fkGenre=genre.id_genre\n"

        . "WHERE carrousel.id_jeu = :id;";
        $requete = $bdd->prepare($sql);
        $requete->bindParam('id', $_SESSION['valeur'], PDO::PARAM_INT);
        $requete->execute();
        $resultat = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
        }
    catch(PDOException $e){
        echo "Erreur pour l'affichage";
        die($e->getMessage());
    }

?>