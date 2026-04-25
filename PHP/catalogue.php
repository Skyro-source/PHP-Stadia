<?php
    session_start();
    unset($_SESSION["erreur"]);
    include "gestion_jeux.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogue</title>
    <link rel="stylesheet" href="../CSS/style_catalogue.css">
</head>
<body id="main">
    <header>
        <a href="acceuil.php" id="reflogo"><img id="logo" src="../Images/logo.png" alt="logo"></a>
        <div id="search-wrapper">
            <input type="text" id="recherche" placeholder="Rechercher..." onkeyup="showResult(this.value)">
            <div id="livesearch"></div>
        </div>
            <?php if(isset($_SESSION["login"])): ?> <!-- Change les boutons en fonction de si l'utilisateur est connecté ou non -->
                <div id=inscco>
                    <a href="compte.php" id="insc">Compte</a>
                    <a href="deconnexion.php" id="deco">Se déconnecter</a>
                </div>
            <?php else: ?>
                <div id=inscco>
                    <a href="connexion.php" id="insc">Se connecter</a>
                    <a href="inscription.php" id="insc">S'inscrire</a>
                </div>                
            <?php endif; ?>      
    </header>

<!-- Section d'affichage des jeux -->


<!-- Jeux d'Action --> 

    <div class="container" id="action">
        <h1>Action</h1>
        <div class="container" id="bannièreAction">
            <?php foreach (array_slice($resultatAction, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux d'Aventure -->

    <div class="container" id="aventure">
        <h1>Aventure</h1>
        <div class="container" id="bannièreAventure">
            <?php foreach (array_slice($resultatAventure, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
                </form>
            <?php endforeach; ?>
        </div>
    </div>

<!-- Jeux de RPG -->

    <div class="container" id="rpg">
        <h1>RPG</h1>
        <div class="container" id="bannièreRPG">
            <?php foreach (array_slice($resultatRPG, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux FPS -->

    <div class="container" id="fps">
        <h1>FPS</h1>
        <div class="container" id="bannièreFPS">
            <?php foreach (array_slice($resultatFPS, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Simulation -->

    <div class="container" id="sim">
        <h1>Simulation</h1>
        <div class="container" id="bannièreSim">
            <?php foreach (array_slice($resultatSim, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Stratégie -->

    <div class="container" id="strat">
        <h1>Stratégie</h1>
        <div class="container" id="bannièreStrat">
            <?php foreach (array_slice($resultatStrat, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Sport -->

    <div class="container" id="sport">
        <h1>Sport</h1>
        <div class="container" id="bannièreSport">
            <?php foreach (array_slice($resultatSport, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Course -->

    <div class="container" id="course">
        <h1>Course</h1>
        <div class="container" id="bannièreCourse">
            <?php foreach (array_slice($resultatCourse, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Survie -->

    <div class="container" id="survie">
        <h1>Survie</h1>
        <div class="container" id="bannièreSurvie">
            <?php foreach (array_slice($resultatSurvie, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Horreur -->

    <div class="container" id="horreur">
        <h1>Horreur</h1>
        <div class="container" id="bannièreHorreur">
            <?php foreach (array_slice($resultatHorreur, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Plateforme -->

    <div class="container" id="plateforme">
        <h1>Plateforme</h1>
        <div class="container" id="bannièrePlateforme">
            <?php foreach (array_slice($resultatPlateforme, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Indépendant -->

    <div class="container" id="inde">
        <h1>Indépendant</h1>
        <div class="container" id="bannièreInde">
            <?php foreach (array_slice($resultatInde, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux MMO -->

    <div class="container" id="mmo">
        <h1>MMO</h1>
        <div class="container" id="bannièreMMO">
            <?php foreach (array_slice($resultatMMO, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

<!-- Jeux Battle Royale -->

    <div class="container" id="br">
        <h1>Battle Royale</h1>
        <div class="container" id="bannièreBR">
            <?php foreach (array_slice($resultatBR, 0, 20)as $row): ?>
                <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                </a>
            <?php endforeach; ?>
        </div>    
    </div>

    <script src="https://code.jquery.com/jquery-4.0.0.js"></script>
    <script src="../JS/recherche.js"></script>
</body>
</html>
