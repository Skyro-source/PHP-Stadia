<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogue</title>
    <link rel="stylesheet" href="../CSS/style_catalogue.css">
</head>
<body>
    <header>
        <a href="acceuil.php" id="reflogo"><img id="logo" src="../Images/logo.png" alt="logo"></a>
        <a href="connexion.php" id="insc">Se connecter/S'inscrire</a>
    </header>

<!-- Section de filtrage --> 

    <div id="filtrage">
        <label>Genre :</label>
        <select name="genre" id="genre_filtre">
            <option disabled selected value> -- select an option -- </option>
            <option value="Action">Action</option>
            <option value="Aventure">Aventure</option>
            <option value="RPG">RPG</option>
            <option value="FPS">FPS</option>
            <option value="Simulation">Simulation</option>
            <option value="Stratégie">Stratégie</option>
            <option value="Sport">Sport</option>
            <option value="Course">Course</option>
            <option value="Survie">Survie</option>
            <option value="Horreur">Horreur</option>
            <option value="Plateforme">Platformer</option>
            <option value="Indépendant">Indépendant</option>
            <option value="MMO">MMO</option>
            <option value="Battle Royale">Battle Royale</option>
        </select>
        <label>Éditeur :
            <input type="text" name="editeur" id="editeur" onkeyup="suggestionEditeur(this.value)">           
        </label>
            <div id="suggEditeur"></div>

        <label>Développeur :
            <input type="text" name="developpeur" id="developpeur" onkeyup="suggestionDeveloppeur(this.value)">           
        </label>
            <div id="suggDeveloppeur"></div>


    </div>

<!-- Section d'affichage des jeux -->

    <div class="container" id="jeux">

    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="../JS/recherche.js"></script>
</body>
</html>
