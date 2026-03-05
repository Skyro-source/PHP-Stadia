<?php
    try
    {
        $bdd = new PDO('mysql:host=127.0.0.1;dbname=stadia;charset=utf8', 'userdb', 'linux');
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connexion réussie";
        die();
    }
    catch (PDOException $e)
    {
        echo "toto";
        die('Erreur :' . $e->getMessage());
    }
?>