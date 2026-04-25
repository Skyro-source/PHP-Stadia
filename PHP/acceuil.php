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
    <title>Stadia</title>
    <link href="../CSS/style_acceuil.css" rel="stylesheet">
</head>
<body id="main">
        <div class="container">
            <header>
                <img id="logo" src="../Images/logo.png" alt="logo">
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
        </div>
        
        <div class="container" id="jeu_principal">
            <div id="jeu_elements">
                <div id="hero-info">
                    <img id="BF6logo" src="" alt="BF6logo">
                    <form method="POST" action="verif_connexion.php">
                        <button type="submit" id="lien-jouer">  
                            <div id="bouton_jouer">
                                <img src="../Images/Bouton_Jouer.png" id="logo_jouer" alt="logo_jouer">
                                <p id="texte_jouer">Jouer</p>
                                <input type="hidden" value="" name="valeur" id="valeur">
                            </div>
                        </button>
                    </form>
                    <p id="descBF6"></p>
                </div>
                <div class="container" id="bannière">
                    <img id="slide-banner" src="" alt="banner">
                </div>
            </div>
            <!-- Navigation par points pour le slideshow héro -->
            <div id="hero-buttons">
                <button class="point active" onclick="changementManuel(0)"></button>
                <button class="point" onclick="changementManuel(1)"></button>
                <button class="point" onclick="changementManuel(2)"></button>
                <button class="point" onclick="changementManuel(3)"></button>
                <button class="point" onclick="changementManuel(4)"></button>
            </div>
        </div>

        <div class="container" id="jeuPlus">
            <h1>Jeux les plus joués</h1>
            <div class="container" id="bannièrePlus">              
                <?php foreach (array_slice($resultatPopulaire, 0, 8) as $row): ?>
                    <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                    </a>
                <?php endforeach; ?>
                </div>
        </div>

        <div class="container" id="FPS">
            <h1>Action</h1>
            <div class="container" id="bannièreFPS">
                <?php foreach (array_slice($resultatAction, 0, 8) as $row): ?>
                    <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                    </a>
                <?php endforeach; ?>
            </div>
        </div>
        
        <div class="container" id="platforme">
            <h1>Plateforme</h1>
            <div class="container" id="bannièrePlateforme">
                <?php foreach (array_slice($resultatPlateforme, 0, 8)as $row): ?>
                    <a href="jeu.php?id=<?= $row['id_jeu'] ?>">
                    <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">   
                    </a>
                <?php endforeach; ?>
            </div>    
        </div>

    </div>
    
    <footer>
        <a href="catalogue.php" id="catalogue">Afficher tout les jeux</a>
    </footer>

    <script src="../JS/carrousel.js"></script>
    <script src="https://code.jquery.com/jquery-4.0.0.js"></script>
    <script src="../JS/recherche.js"></script>
</body>
</html>
