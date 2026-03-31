const jeux = [
    {
        logo:        '../Images/Logos/BF6Logo.png',
        description: "L'expérience de guerre totale ultime. Dans une guerre de chars, d'avions de chasse et d'arsenaux massifs, votre escouade est l'arme la plus redoutable.",
        lien:        'https://store.steampowered.com/app/2807960/Battlefield_6/',             
    },
    {
        logo:        '../Images/Logos/CS2Logo.png',
        description: "Counter-Strike, c'est l'expérience compétitive par excellence qui réunit des millions de personnes depuis plus de vingt ans. L'heure est venue d'écrire le prochain chapitre de l'histoire de Counter-Strike. Faites place à Counter-Strike 2.",
        lien:        'https://store.steampowered.com/app/730',
    },
    {
        logo:        '../Images/Logos/TF2Logo.png',
        description: "Les neuf classes différentes offrent une grande sélection de capacités tactiques et de personnalités. Régulièrement mis à jour avec de nouveaux modes de jeu, de nouvelles cartes, du nouvel équipement et, surtout, des chapeaux ! ",
        lien:        'https://store.steampowered.com/app/440',
    },
];

const slides     = document.querySelectorAll('.slide-banner');
const points     = document.querySelectorAll('.point');
const heroInfo   = document.getElementById('hero-info');
const logoImg    = document.getElementById('BF6logo');
const descPara   = document.getElementById('descBF6');
const lienBouton = document.getElementById('lien-jouer');

let indexActuel = 0;
let intervalle;

function changerImage(i) {
    slides.forEach(s => s.classList.remove('active'));
    heroInfo.classList.add('fade');

    setTimeout(() => {
        logoImg.src           = jeux[i].logo;
        descPara.textContent  = jeux[i].description;
        lienBouton.href       = jeux[i].lien;

        slides[i].classList.add('active');
        heroInfo.classList.remove('fade');

        points.forEach(p => p.classList.remove('active'));
        points[i].classList.add('active');
    }, 400);
}

function demarrerCarrousel() {
    clearInterval(intervalle);
    intervalle = setInterval(() => {
        indexActuel = (indexActuel + 1) % jeux.length;
        changerImage(indexActuel);
    }, 15000);
}

function changerImageManuellement(i) {
    indexActuel = i;
    changerImage(i);
    demarrerCarrousel();
}

// Pause on hover
heroInfo.addEventListener('mouseenter', () => clearInterval(intervalle));
heroInfo.addEventListener('mouseleave', () => demarrerCarrousel());

demarrerCarrousel();
