<?php

    /** Connexion à la BDD */

    try
    {
        $bdd = new PDO('mysql:host=127.0.0.1;dbname=stadia;charset=utf8', 'newuser', 'linux');
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch (PDOException $e)
    {
        echo "toto";
        die('Erreur :' . $e->getMessage());
    }
?>

