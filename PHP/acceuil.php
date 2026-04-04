<?php
    session_start();
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
                <?php if(isset($_SESSION["login"])): ?>
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
            <div id="hero-info">
                <img id="BF6logo" src="../Images/Logos/GTAVLogo.png" alt="BF6logo">
                <a href="https://store.steampowered.com/app/271590" id="lien-jouer">
                    <div id="bouton_jouer">
                        <img src="../Images/Bouton_Jouer.png" id="logo_jouer" alt="logo_jouer">
                        <p id="texte_jouer">Jouer</p>
                    </div>
                </a>
                <p id="descBF6">Grand Theft Auto V sur PC offre aux joueurs la possibilité d'explorer le monde de Los Santos et Blaine County en haute résolution (jusqu'à 4K) et à 60 images par seconde.</p>
            </div>
            <div class="container" id="bannière">
                <img class="slide-banner active" src="../Images/BannerHorizontal/GTAVBannerHorizontal.jpg" alt="BF6banner">
                <img class="slide-banner" src="../Images/BannerHorizontal/CS2BannerHorizontal.jpg" alt="CS2banner">
                <img class="slide-banner" src="../Images/BannerHorizontal/TF2BannerHorizontal.jpg" alt="TF2banner">
            </div>
            <!-- Navigation par points pour le slideshow héro -->
            <div id="hero-buttons">
                <button class="point active" onclick="changerImageManuellement(0)"></button>
                <button class="point" onclick="changerImageManuellement(1)"></button>
                <button class="point" onclick="changerImageManuellement(2)"></button>
            </div>
        </div>

        <div class="container" id="jeuPlus">
            <h1>Jeux les plus joués</h1>
            <div class="container" id="bannièrePlus">              
                <?php foreach (array_slice($resultatPopulaire, 0, 8) as $row): ?>
                    <form method="POST" action="recup_donnees.php">
                        <button type="submit">
                            <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">
                            <input type="hidden" value="<?= htmlspecialchars($row['id_jeu'])?>" name="valeur">
                        </button>
                    </form>
                <?php endforeach; ?>
                </div>
        </div>

        <div class="container" id="FPS">
            <h1>Action</h1>
            <div class="container" id="bannièreFPS">
                <?php foreach (array_slice($resultatAction, 0, 8) as $row): ?>
                    <form method="POST" action="recup_donnees.php">
                        <button type="submit">
                            <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">
                            <input type="hidden" value="<?= htmlspecialchars($row['id_jeu'])?>" name="valeur">
                        </button>
                    </form>
                <?php endforeach; ?>
            </div>
        </div>
        
        <div class="container" id="platforme">
            <h1>Plateforme</h1>
            <div class="container" id="bannièrePlateforme">
                <?php foreach (array_slice($resultatPlateforme, 0, 8)as $row): ?>
                    <form method="POST" action="recup_donnees.php">
                        <button type="submit">
                            <img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu">
                            <input type="hidden" value="<?= htmlspecialchars($row['id_jeu'])?>" name="valeur">
                        </button>
                    </form>
                <?php endforeach; ?>
            </div>    
        </div>

    </div>
    <script src="../JS/carrousel.js"></script>
    <footer>
        <a href="catalogue.php" id="catalogue">Afficher tout les jeux</a>
    </footer>

    <script src="https://code.jquery.com/jquery-4.0.0.js"></script>
    <script src="../JS/recherche.js"></script>
</body>
</html>
