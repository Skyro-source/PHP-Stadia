<!DOCTYPE html>
<html lang="en">
<head>
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
            <a href="https://store.steampowered.com/app/2807960/Battlefield_6/">
                <div id="bouton_jouer">
                    <img src="../Images/Bouton_Jouer.png" id="logo_jouer" alt="logo_jouer">
                    <p id="texte_jouer">Jouer</p>
                </div>
            </a>
            <img id="BF6logo" src="../Images/BF6logo.png" alt="BF6logo">
            <p id="descBF6">L'expérience de guerre totale ultime. Dans une guerre de chars, d'avions de chasse et d'arsenaux massifs, votre escouade est l'arme la plus redoutable.</p>   
            <div class="container" id="bannière">
                <img id="BF6banner" src="../Images/BF6Banner.jpg" alt="BF6banner">
            </div>
        </div>

<!-- Section jeux les plus joués -->

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
                <?php foreach (array_slice($resultatPopulaire, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>

<!--Januel m'avait proposé une option super longue pour donner à des images un lien nécessitant un tableau associatif
et de faire 25 000 autres trucs pour extraire les données, alors que juste mettre ['lien'] marchait, comme quoi la facilité
est la meilleure option... -->

            </div>
        </div>

<!-- Section jeux d'action -->

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

        <div class="container" id="action">
            <h1>Action</h1>
            <div class="container" id="bannièreAction">
                <?php foreach (array_slice($resultatAction, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux d'aventure -->
         
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

        <div class="container" id="aventure">
            <h1>Aventure</h1>
            <div class="container" id="bannièreAventure">
                <?php foreach (array_slice($resultatAventure, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>
        </div>

<!-- Section jeux RPG -->

        <?php
            include_once "bdd.php";

            try{
                $sqlRPG = "SELECT image, lien FROM jeu WHERE fkGenre = 3 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlRPG);
                $requete->execute();
                $resultatRPG = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="rpg">
            <h1>RPG</h1>
            <div class="container" id="bannièreRPG">
                <?php foreach (array_slice($resultatRPG, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux FPS -->

        <?php
            include_once "bdd.php";

            try{
                $sqlFPS = "SELECT image, lien FROM jeu WHERE fkGenre = 4 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlFPS);
                $requete->execute();
                $resultatFPS = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="fps">
            <h1>FPS</h1>
            <div class="container" id="bannièreFPS">
                <?php foreach (array_slice($resultatFPS, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>        

<!-- Section jeux de simulation -->

        <?php
            include_once "bdd.php";

            try{
                $sqlSim = "SELECT image, lien FROM jeu WHERE fkGenre = 5 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlSim);
                $requete->execute();
                $resultatSim = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="sim">
            <h1>Simulation</h1>
            <div class="container" id="bannièreSim">
                <?php foreach (array_slice($resultatSim, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux de Stratégie-->

        <?php
            include_once "bdd.php";

            try{
                $sqlStrat = "SELECT image, lien FROM jeu WHERE fkGenre = 6 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlStrat);
                $requete->execute();
                $resultatStrat = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="strat">
            <h1>Stratégie</h1>
            <div class="container" id="bannièreStrat">
                <?php foreach (array_slice($resultatStrat, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux de Sport -->

        <?php
            include_once "bdd.php";

            try{
                $sqlSport = "SELECT image, lien FROM jeu WHERE fkGenre = 7 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlSport);
                $requete->execute();
                $resultatSport = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="sport">
            <h1>Sport</h1>
            <div class="container" id="bannièreSport">
                <?php foreach (array_slice($resultatSport, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux de Course -->

        <?php
            include_once "bdd.php";

            try{
                $sqlCourse = "SELECT image, lien FROM jeu WHERE fkGenre = 8 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlCourse);
                $requete->execute();
                $resultatCourse = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="course">
            <h1>Course</h1>
            <div class="container" id="bannièreCourse">
                <?php foreach (array_slice($resultatCourse, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux de Survie --> 

        <?php
            include_once "bdd.php";

            try{
                $sqlSurvie = "SELECT image, lien FROM jeu WHERE fkGenre = 9 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlSurvie);
                $requete->execute();
                $resultatSurvie = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="survie">
            <h1>Survie</h1>
            <div class="container" id="bannièreSurvie">
                <?php foreach (array_slice($resultatSurvie, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!--Section jeux de Horreur --> 

        <?php
            include_once "bdd.php";

            try{
                $sqlHorreur = "SELECT image, lien FROM jeu WHERE fkGenre = 10 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlHorreur);
                $requete->execute();
                $resultatHorreur = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="horreur">
            <h1>Horreur</h1>
            <div class="container" id="bannièreHorreur">
                <?php foreach (array_slice($resultatHorreur, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux de Plateforme -->

        <?php
            include_once "bdd.php";

            try{
                $sqlPlatforme = "SELECT image, lien FROM jeu WHERE fkGenre = 11 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlPlatforme);
                $requete->execute();
                $resultatPlateforme = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="plateforme">
            <h1>Plateforme</h1>
            <div class="container" id="bannièrePlateforme">
                <?php foreach (array_slice($resultatPlateforme, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux... indépendants ????? Wow okay, merci ChatGPT de considérer des jeux indés comme un genre différent --> 

        <?php
            include_once "bdd.php";

            try{
                $sqlInde = "SELECT image, lien FROM jeu WHERE fkGenre = 12 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlInde);
                $requete->execute();
                $resultatInde = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="inde">
            <h1>Indépendant</h1>
            <div class="container" id="bannièreInde">
                <?php foreach (array_slice($resultatInde, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux MMO --> 

        <?php
            include_once "bdd.php";

            try{
                $sqlMMO = "SELECT image, lien FROM jeu WHERE fkGenre = 13 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlMMO);
                $requete->execute();
                $resultatMMO = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="mmo">
            <h1>MMO</h1>
            <div class="container" id="bannièreMMO">
                <?php foreach (array_slice($resultatMMO, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>

<!-- Section jeux Battle Royale -->

        <?php
            include_once "bdd.php";

            try{
                $sqlBR = "SELECT image, lien FROM jeu WHERE fkGenre = 14 ORDER BY RAND() LIMIT 10";
                $requete = $bdd->prepare($sqlBR);
                $requete->execute();
                $resultatBR = $requete->fetchAll(PDO::FETCH_ASSOC);
            }
            catch(PDOException $e){
                echo "Erreur pour l'affichage";
                die($e->getMessage());
            }
        ?>

        <div class="container" id="br">
            <h1>Battle Royale</h1>
            <div class="container" id="bannièreBR">
                <?php foreach (array_slice($resultatBR, 0, 8)as $row): ?>
                    <a href="<?= htmlspecialchars($row['lien']) ?>" ><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
                <?php endforeach; ?>
            </div>    
        </div>
    </div>    
</body>
</html>