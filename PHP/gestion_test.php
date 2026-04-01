<?php
include_once "bdd.php";


$q = $_GET['q'];

try{
    $sql = "SELECT nom_jeu, lien from vue_jeux_complets WHERE nom_jeu LIKE :jeu ";
    $requete = $bdd->prepare($sql);
    $q = "%".$q."%";
    $requete->bindParam("jeu", $q, PDO::PARAM_STR);
    $requete->execute();
    $resultat = $requete->fetchAll(PDO::FETCH_ASSOC);

    $resultat = $resultat;

    echo json_encode($resultat);
}
catch(PDOException $e){

}

?>