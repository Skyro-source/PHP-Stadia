let resultat = []; // Déclare l'array en avance
let indexActuel = 0;
let image = document.querySelector("#slide-banner");
let logoImg = document.querySelector("#BF6logo");
let desc = document.querySelector("#descBF6");
let lien = document.querySelector("#valeur")
let bouton = document.querySelectorAll(".point");
let banniere = document.querySelector("#jeu_elements")
let intervalle;

// Recupère les données de "gestion_carousel.php"

fetch('../PHP/gestion_carrousel.php')
  .then(res => res.json())
  .then(data => {
    resultat = data.map(row => ({ // Rempli l'array
        id_jeu: row.id_jeu,
        image_horizontale: row.image_horizontale,
        description: row.description,
        logo: row.logo
    })); 
    image.src = resultat[0].image_horizontale; // Mets les éléments dans le HTML
    logoImg.src = resultat[0].logo;
    desc.textContent = resultat[0].description;
    lien.value = resultat[0].id_jeu;
    intervalle = setInterval(changementAutomatique, 15000); // Démarre le compteur pour le changement automatique
  });

// Fonction pour le changement de l'image

function changerImage(i){
    clearInterval(intervalle); // Enlève l'intervalle
    $(banniere).fadeOut(500, function() {

        image.src = resultat[i].image_horizontale;
        logoImg.src = resultat[i].logo;
        desc.textContent = resultat[i].description;
        lien.value = resultat[i].id_jeu;

        bouton.forEach(p => p.classList.remove('active'));
        bouton[i].classList.add('active');

        $(banniere).fadeIn(500);
        intervalle = setInterval(changementAutomatique, 15000); // Remet l'intervalle
    });
}

// Changement manuel de l'image

function changementManuel(i){
    indexActuel = i;
    changerImage(i);
}

// Changement automatique

function changementAutomatique(){
    indexActuel++
    if (indexActuel >= resultat.length){
        indexActuel = 0;
    }
    changerImage(indexActuel);
}

banniere.addEventListener('mouseenter', () => clearInterval(intervalle));
banniere.addEventListener('mouseleave', () => intervalle = setInterval(changementAutomatique, 15000));