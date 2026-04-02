<?php
session_start();

$_SESSION['valeur'] = $_POST["valeur"] ?? '';
echo $_SESSION['valeur'];

header("Location: jeu.php");

exit;

?>