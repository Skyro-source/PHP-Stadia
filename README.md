# ***<p align="center">Documentation PHP</p>***

## ***Instructions pour mettre en place le site***

Si vous êtes sur Linux :

    - Installez apache2
    - Mettez tout les dossiers dans /var/html/www/
    - Installez Mysql
    - Créez la base de données Stadia (CREATE DATABASE stadia;)
    - Créez l'utilisateur "newuser", avec le mot de passe "linux"
    - Donnez lui toutes les permissions "GRANT ALL PRIVILEGES ON stadia.* TO 'newuser@localhost';
    - Insérez toutes les données dans /SQL/stadia.sql
    - Ouvrez votre navigateur Web et tapez votre adresse IP (ip a dans la console de commande pour le touver), et NORMALEMENT vous pouvez ensuite cliquer sur le dossier PHP, puis acceuil.php, et vous êtes sur le site !

Si vous êtes sur Windows :

    - Installez XAMPP
    - Dans XAMPP Control Panel, démarrez Apache et MySQL
    - Allez dans "C:\xampp\htdocs" sur votre PC
    - Créez un nouveau dossier et copier tout les éléments dedans
    - Allez sur 127.0.0.1/phpmyadmin (vous pouvez remplacer l'IP par localhost, ça marche aussi)
    - Cliquez sur "Nouvelle base de données" dans la barre à gauche
    - Dans la case "Nom de base données", donnez lui "stadia" et créez là
    - Cliquez sur la maison en dessous du logo "phpMyadmin"
    - Cliquez sur l'onglet "Comptes utilisateurs" sur la barre d'en haut
    - Cliquez sur "Ajouter un compte d'utilisateur"
    - Nommez le "newuser", donnez lui l'hôte "localhost", le mot de passe "linux" et dans la case privilèges globaux lui accorder tout les privilèges (enfin c'est pas comme ça qu'on le ferait normalement, c'est juste que j'ai oublié comment accorder des privilèges sur juste un table sur phpMyadmin donc bon)
    - Retournez sur la base Stadia, et cliquez sur importer dans la barre d'en haut
    - Dans la section "Fichier à importer", choisissez le fichier "stadia.sql"
    - Allez sur votre navigateur et tapez "127.0.0.1/'nom_du_dossier_où_vous_stockez_les_éléments_du_site"
    - Cliquez sur le dossier PHP et acceuil.php et NORMALEMENT le site devrait fonctionner !

Si vous êtes sur Mac :

    - Frère débrouille toi
     

## <p align="center">***Explication des fonctionnalités***</p>

## Page d'acceuil

La première chose qu'on peut remarquer quand nous lancons le site est que contrairement à mes autres camarades qui ont fait des répliques de Netflix, j'ai personellement décidé de dévier des films et séries pour faire à la place des jeux vidéos, prenant le service Stadia qui à fermé il y'a quelques années. Pourquoi ? Principalement pour deux raisons : 

    - J'aime les jeux vidéos
    - C'était très facile de récupérer des images de jeux sur Steam à partir de *SteamGridDB* (https://www.steamgriddb.com/)

Toute les images et liens sur le site sont chargés depuis la base de données SQL, dont vous pouvez trouver le code dans le dossier... SQL. Pour la section des jeux les plus joués par exemple, nous faisons ensuite cette requête pour récupérer 8 (LIMIT 8) des images de manière aléatoire (ORDER BY RAND()) et leur lien associé :

```    
    try{
        $sqlPopulaire = "SELECT image, lien FROM jeu ORDER BY RAND() LIMIT 10"; // Variable aléatoire afin de constamment sortir une nouvelle image à l'utilisateur
        $requete = $bdd->prepare($sqlPopulaire);
        $requete->execute();
        $resultatPopulaire = $requete->fetchAll(PDO::FETCH_ASSOC); // Récupère le résultat
        }
        catch(PDOException $e){
            echo "Erreur pour l'affichage";
        die($e->getMessage());
    }
```

Nous affichons ensuite les images sur le site en leur associant le bon lien avec cette fonction PHP : 

``` 
    <?php foreach (array_slice($resultatPopulaire, 0, 8) as $row): ?>
        <a href="<?= htmlspecialchars($row['lien']) ?>"><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
    <?php endforeach; ?>
```

Nous utilisons la fonction *foreach* afin de ne pas avoir à repêter les mêmes balises HTML constamment.

Quand au sections en dessous, c'est litérallement la même chose, mais nous mettons la restriction "WHERE fkGenre = 1" pour prendre seulement des jeux d'un genre spécifique.

La seule exception à cela est le carrousel, dont les images dont les images sont chargés localement.

## Page catalogue

Cette page montre la librairie entière, filtré par genre. Mettre cela en place n'était pas difficile, juste éxecuter des requuêtes SQL pour chaque sections en leur indiquant quel genre prendre, et les mettre dans des '<div>' séparés, comme pour la page d'acceuil. D'ailleurs peu de travail à du être fait pour mettre cette page en place, car j'avait originellemtn pour projet de faire un grand catalogue comme ça pour la page d'acceuil, cependant vu que j'allais devoir faire cette page dans tout les cas, je me suis dit que ce serait un peu redondant.

Une autre chose que j'aurais bien aimé faire mais au final que je n'ai pas fait est du filtrage dynamique. Je comptais utiliser du AJAX pour permettre à l'utilisateur de filtrer les jeux en fonction du genre, éditeur et développeur dynamiquement. Cependant j'ai fini par abandonner cette idée pour deux raisons :

    - Il n'y a pas assez de jeu dans la base pour justifier une telle chose
    - Je suis un idiot qui ne sait pas comment programmer et mes fonctions JS étaient remplies de bug dont j'avait un peu la flemme de régler

## Page inscription

Pour qu'un utilisateur puisse s'inscrire, nous faisons plusieures choses :

    - Nous vérifions d'abord si le formulaire est rempli évidemment, avec la fonction "!empty", si il est rempli, nous pouvons à l'étape suivante, sinon, nous envoyons un message d'erreur disant à l'utilisateur qu'il y'a une erreur dans le formulaire.
    - Nous récupérons ensuite les données du formulaire grâce à $_POST, et nous leur appliquont "htmlspecialchars()" pour éviter les attaques XSS. Nous rajoutons aussi au mot de passe la fonction "password_hash()" pour que le mot de passe soit chiffré dans la base de données.
    - Nous faisons ensuite une requête SQL pour les insérer dans la BDD et nous faisons également des "bindParam()" pour éviter les injections SQL.
    - Dès que l'inscription est fini, nous envoyons l'utilisateur sur "connexion.php"

## Page connexion

Lorsqu'un utilisateur rentre ses données dans le formulaire et l'envoie, nous effectuons les tâches suivantes : 

    - Nous regardons d'abord si l'utilisateur à rempli tout les champs et nous envoyons une erreur si ce n'est pas le cas
    - Nous récupérons l'email et ont le met dans la variable "$mail"
    - Nous récupérons les données de l'utilisateur dans la BDD en fonction de l'email de l'utilisateur (WHERE email = ?)
    - Nous utilisons la fonction "password_verify()" pour "déhasher" le mot de passe en base et vérifier qu'il est identique à celui que l'utilisateur a mis dans le formulaire
        - Si oui, nous mettons l'email de l'utilisateur dans la fonction "$_SESSION["login"] et nous le renvoyons sur la page principale
        - Si non, nous envoyons un message d'erreur

## Système de connexion

Tant que nous sommes sur ce sujet là, autant aborder le système de connexion.
Tout d'abord, sur toutes les pages du site, une session est créer (session_start();)
Au lieu de restreindre complètement le site si l'utilisateur n'est pas connecté, j'ai plutôt décidé de laisser l'utilisateur l'accès complet au site sauf pour la page donnant les informations sur le compte, les jeux récents auquel il a joué, et la possibilité de cliquer sur le bouton "Jouer" sur la page d'un jeu. Pour cela, il sera forcé de se connecter.
Dans le header des pages acceuil, catalogue et jeu, nous avons une fonction PHP "if" qui regarde si une information est dans la variable "$_SESSION["login"].
    - Si oui, nous affichons le bouton "Compte" et le bouton de déconnexion.
    - Si non, nous affichons le bouton "Se connecter" et "S'inscrire".

Si l'utilisateur est connecté, il ne peut pas se rendre sur la page de connexion et d'inscription.

## Système de recherche

Le site à un système de recherche si l'utilisateur souhaite rechercher un jeu particulier.
Ce système utilise du AJAX et du XML.
Nous avons un input html qui récupère les données de l'utilisateur, au bout de 3 caractères, nous récupérons le résultat de cet input grâce au fichier "recherche.js" et nous le mettons un dans un fichier XML que nous envoyons à "gestion_recherche.php". Dans ce dossier, nous récupérons ces données et nous les mettons dans la variable "$q". Nous faisons ensuite une requête SQL pour récupérer le nom du jeu ainsi que son ID en utilisant "LIKE" au lieu d'un "=" pour obtenir des résultats même si le nom tapé n'est pas exact.
Le résultat est ensuite renvoyé à "recherche.js" et nous affichons les résultats.

## Gestion jeu spécifique

Que ce soit lorsqu'on clique sur un jeu sur la page principale, dans le catalogue ou bien sur la barre de recherche, nous gardons un "input" invisible juste à côté du jeu pour savoir lequel l'utilisateur à cliquer. Le site passe d'abord dans "recup_donnees.php" ou il récupère la valeur de l'input et le met dans $_SESSION["valeur"] pour qu'on puisse facilement le passer d'une page à l'autre.

Il est ensuite envoyé sur la page "jeu.php", ici, nous récupérons une tonne d'informations sur un jeu à afficher pour la page en fonction de l'ID présent dans $_SESSION["valeur"].

Dès que l'utilisateur clique sur le bouton "Jouer", nous vérifions d'abord si il est connecté et le renvoyons sur la page de connexion si ce n'est pas le cas, récupérons le lien du jeu sur lequel il a cliqué avec une requête SQL, mettons ce lien dans la variable "$page" puis nous utilisons un "header()" pour le renvoyer sur cette page.

## Gestion compte

La page "compte.php" permet d'afficher les informations du compte d'un utilisateur. Nous avons déjà l'email de l'utilisateur, donc le récupérer après n'est pas un problème, nous prenons juste les infos nécessaires avec une requête SQL en indiquant quel utilisateur prendre avec un "WHERE" et nous les affichons sur le site.

## Déconnexion

Peut importe la page sur laquelle l'utilisateur est, deux choses sont effectués :

    - La session est complètement détruite
    - L'utilisateur est renvoyé sur la page principale

## Fonctionnalité bonus

Ce site possède juste une des fonctionnalités bonus qui nous a été conseillé de faire (même si elle n'est pas vraiment bien coder mais bon).
Lorsqu'un utilisateur clique sur le bouton "Jouer" dans la page "jeu.php" en plus de le rediriger vers la page Steam du jeu, nous récupérons également l'ID du jeu et nous le mettons dans l'array $_SESSIONS["récent"].

Dans "gestion_recent.php", nous mettons cet valeur dans "$id" et nous utilisons la fonction "implode()" pour enlever les index dans l'array et juste garder les ID des jeux afin de pouvoir l'utiliser pour la requête SQL, puis nous mettons cela dans $temp. Afin de pouvoir récupérer plusieurs lignes, nous utilisons "IN" et nous mettons à l'intérieur la variable $temp.

Enfin, si l'utilisateur n'a pas encore joué à un jeu, il ne peut pas accéder à la page, le renvoyant directement sur "compte.php".

Le problème est que évidemment, vu que nous le mettons dans $_SESSION, cette liste de jeu disparait dès qu'il se déconnecte puisque nous détruisons entièrement la session. Et si nous décidons de ne pas complètement détruire mais de juste "unset($_SESSION["login"]), ces données se trnasfèrent d'un utilisateur à l'autre.
Il y'a peut-être une méthode pour associer une variable à une autre variable, cependant ce genre de programmes est sensé être utilisé sur plusieures plateformes de toute façon, que ce soit un TV, un téléphone, une tablette ou un PC. J'imagine que la meilleure option serait juste de renvoyer l'array dans une BDD, l'associer à l'ID de l'utilisateur et le fetch quand on en a besoin.






