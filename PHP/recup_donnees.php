<?php
    session_start();

    // Récupération des données pour jeu.php

    $_SESSION['valeur'] = $_POST["valeur"] ?? '';
    echo $_SESSION['valeur'];

    header("Location: jeu.php");

    exit;

?>