# ***<p align="center">Documentation PHP</p>***

L'intérêt de ce texte n'est pas vraiment d'expliquer comment utiliser la page web, parce qu'elle est complètement graphique et peut être navigué par litérallement n'importe qui à utilisé ce type de service une fois dans vie, mais plutôt d'expliquer comment le site marche côté serveur/PHP et certaines décisions que j'ai prises.

## Page d'acceuil

Pour le carrousel, je vais l'admettre immédiatement, ce dernier à été généré par une IA à partir d'un fichier d'un de mes camarades puisque je ne l'avais pas réalisé durant le TP Final sur le Web. Je peux rajouter également qu'une partie du CSS à aussi été effectué par de l'IA, j'ai effectué le choix sur les couleurs, l'emplacement des boutons, bannières et divers éléments du site et j'ai de l'aide notamment sur le formatage pour faire en sorte que le site marche correctement peut importe l'écran sur lequel sur lequel ont le regarde. 

Maintenant que j'ai admit mes péchés, nous pouvons passer à quelque chose de plus intéréssant.

La première chose qu'on peut remarquer quand nous lancons le site est que contrairement à mes autres camarades qui ont fait des répliques de Netflix, j'ai personellement décidé de dévier des films et séries pour faire à la place des jeux vidéos, prenant le service Stadia qui à fermé il y'a quelques années. Pourquoi ? Principalement pour deux raisons : 

    - J'aime les jeux vidéos
    - C'était très facile de récupérer des images de jeux sur Steam à partir de *SteamGridDB* (https://www.steamgriddb.com/)

(A CHANGER)
Toute les images  et liens sur le site sont chargés depuis la base de données SQL, dont vous pouvez trouver le code dans le dossier... SQL. Pour la section des jeux les plus joués par exemple, nous faisons ensuite cette requête pour récupérer 8 (LIMIT 8) des images de manière aléatoire (ORDER BY RAND()) et leur lien associé :

```    try{
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

``` <?php foreach (array_slice($resultatPopulaire, 0, 8) as $row): ?>
        <a href="<?= htmlspecialchars($row['lien']) ?>"><img class="imgBannière" src="<?= htmlspecialchars($row['image']) ?>" alt="Image du jeu"></a>
    <?php endforeach; ?>
```

Nous utilisons la fonction *foreach* afin de ne pas avoir à repêter les mêmes balises HTML constamment.

Quand au sections en dessous, c'est litérallement la même chose, mais nous mettons la restriction "WHERE fkGenre = 1" pour prendre seulement des jeux d'un genre spécifique.

(A CHANGER)

La seule exception à cela est le carrousel, dont les images dont les images sont chargés localement, cela pourra peut-être, parce que j'ai pour projet de le retoucher, mais je vais le laisser comme ça pour le moment.

## Page catalogue

Cette page montre la librairie entière, filtré par genre. Mettre cela en place n'était pas difficile, juste éxecute des requuêtes SQL pour chaque sections en leur indiquant quel genre prendre, et les mettre dans des '<div>' séparés, comme pour la page d'acceuil. D'ailleurs peu de travail à du être fait pour mettre cette page en place, car j'avait déjà un grand catalogue comme ça pour la page d'acceuil, cependant vu que j'allais devoir faire cette page dans tout les cas, je me suis dit que ce serait un peu redondant.

Une autre chose que j'aurais bien aimé faire mais au final que je n'ai pas fait est du filtrage dynamique. Je comptais utiliser du AJAX pour permettre à l'utilisateur de filtrer les jeux en fonction du genre, éditeur et développeur dynamiquement. Cependant j'ai fini par abandonner cette idée pour deux raisons :

    - Il n'y a pas assez de jeu dans la base pour justifier une telle chose
    - Je suis un idiot qui ne sait pas comment programmer et mes fonctions JS étaient remplies de bug dont j'avait un peu la flemme de régler

## Page connexion

## Page inscription

Frr je vais être honnête j'ai la flemme de continuer à écrire, si je voulais vraiment faire ça j'ouvrirais un script, je vais aller un peu coder je pense pour le moment.







