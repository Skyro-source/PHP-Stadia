<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="gestion_test.php" method="GET">
            <input type="text" name="editeur" id="editeur" onkeyup="suggestionEditeur(this.value)">
            <div id="suggEditeur"></div>
    </form>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="../JS/recherche_auto.js"></script>
</body>
</html>
