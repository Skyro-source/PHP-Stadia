// Fonction pour récupérer les jeux selon les filtres

function fetchJeux() {
    const genre = document.getElementById('genre_filtre').value;
    const editeur = document.getElementById('editeur').value;
    const developpeur = document.getElementById('developpeur').value;

    fetch('gestion_catalogue.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: 'genre=' + encodeURIComponent(genre)
            + '&editeur=' + encodeURIComponent(editeur)
            + '&developpeur=' + encodeURIComponent(developpeur)
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById('jeux').innerHTML = data;
    });
}

// Affichage de tous les jeux au chargement de la page
fetchJeux();

// Mise à jour au changement de filtre
document.getElementById('genre_filtre').addEventListener('change', fetchJeux);
document.getElementById('editeur').addEventListener('keyup', fetchJeux);
document.getElementById('developpeur').addEventListener('keyup', fetchJeux);

// Autocomplétion de l'éditeur

function suggestionEditeur(editeur) {
    $.ajax({
        type: "post",
        url: "gestion_catalogue.php",
        data: { suggestion_editeur: editeur },
        success: function(response) {
            $("#suggEditeur").fadeIn().html(response);
        }
    });
}

function selectEditeur(editeur) {
    $("#editeur").val(editeur);
    $("#suggEditeur").fadeOut();
    fetchJeux();
}

// Autocomplétion du développeur

function suggestionDeveloppeur(developpeur) {
    $.ajax({
        type: "post",
        url: "gestion_catalogue.php",
        data: { suggestion_developpeur: developpeur },
        success: function(response) {
            $("#suggDeveloppeur").fadeIn().html(response);
        }
    });
}

function selectDeveloppeur(developpeur) {
    $("#developpeur").val(developpeur);
    $("#suggDeveloppeur").fadeOut();
    fetchJeux();
}
