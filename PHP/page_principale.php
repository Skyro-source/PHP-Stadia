<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" href="../Images/logo_txt_less.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stadia</title>
    <link href="../CSS/style_page_principale.css" rel="stylesheet">
</head>
<body id="main">
        <div class="container">
            <header>
                <img id="logo" src="../Images/logo.png" alt="logo">
                <a href="connexion.php" id="insc">Se connecter/S'inscrire</a>
            </header>
        </div>
        
        <div class="container" id="jeu_principal">
            <div id="hero-info">
                <img id="BF6logo" src="../Images/BF6logo.png" alt="BF6logo">
                <a href="https://store.steampowered.com/app/2807960/Battlefield_6/" id="lien-jouer">
                    <div id="bouton_jouer">
                        <img src="../Images/Bouton_Jouer.png" id="logo_jouer" alt="logo_jouer">
                        <p id="texte_jouer">Jouer</p>
                    </div>
                </a>
                <p id="descBF6">L'expérience de guerre totale ultime. Dans une guerre de chars, d'avions de chasse et d'arsenaux massifs, votre escouade est l'arme la plus redoutable.</p>
            </div>
            <div class="container" id="bannière">
                <img class="slide-banner active" src="../Images/BannerHorizontal/BF6BannerHorizontal.jpg" alt="BF6banner">
                <img class="slide-banner" src="../Images/BannerHorizontal/CS2BannerHorizontal.jpg" alt="CS2banner">
                <img class="slide-banner" src="../Images/BannerHorizontal/TF2BannerHorizontal.jpg" alt="TF2banner">
            </div>
            <!-- Navigation par points pour le slideshow héro -->
            <div id="hero-buttons">
                <button class="point active" onclick="changerImage(0)"></button>
                <button class="point" onclick="changerImage(1)"></button>
                <button class="point" onclick="changerImage(2)"></button>
            </div>
        </div>

        <?php
            // Afficher les images à partir de la BDD

            include_once "bdd.php"; // Connexion à la BDD

            try{
                $sqlPopulaire = "SELECT image, lien FROM jeu ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlPopulaire);
                $requete->execute();
                $resultatPopulaire = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="jeuPlus">
            <h1>Jeux les plus joués</h1>
            <div class="container" id="bannièrePlus">                
                <?php foreach (array_slice($resultatPopulaire, 0, 8) as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>"><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>
        </div>

        <?php
            include_once "bdd.php";

            try{
                $sqlAction = "SELECT image, lien FROM jeu WHERE fkGenre = 1 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlAction);
                $requete->execute();
                $resultatAction = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="FPS">
            <h1>Action</h1>
            <div class="container" id="bannièreFPS">
                <?php foreach (array_slice($resultatAction, 0, 8) as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>"><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>
        </div>
        
        <?php
            include_once "bdd.php";

            try{
                $sqlAventure = "SELECT image, lien FROM jeu WHERE fkGenre = 2 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlAventure);
                $requete->execute();
                $resultatAventure = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="platformer">
            <h1>Aventure</h1>
            <div class="container" id="bannièrePlatformer">
                <?php foreach (array_slice($resultatAventure, 0, 8) as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>"><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <script src="../JS/carrousel.js"></script>
    <footer>
        <h1 align="center" id=placeholder>Placeholder</h1>
    </footer>
</body>
</html>
