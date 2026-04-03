let currentIndex = 0;
let slideInterval;

// Build all slides and nav dots from the PHP data exposed via heroGames
function buildCarousel() {
    const banner   = document.getElementById("bannière");
    const buttons  = document.getElementById("hero-buttons");

    heroGames.forEach((game, i) => {
        // Create the banner slide image
        const img = document.createElement("img");
        img.src   = game.image_horizontale;
        img.alt   = "Banner " + (i + 1);
        img.classList.add("slide-banner");
        if (i === 0) img.classList.add("active");
        banner.appendChild(img);

        // Create the nav dot button
        const btn = document.createElement("button");
        btn.classList.add("point");
        if (i === 0) btn.classList.add("active");
        btn.addEventListener("click", () => changerImageManuellement(i));
        buttons.appendChild(btn);
    });

    // Display first game's info immediately
    updateHeroInfo(0);
    startAutoSlide();
}

// Sync the left-side info panel with the current slide
function updateHeroInfo(index) {
    const game = heroGames[index];

    document.getElementById("hero-logo").src        = game.logo;
    document.getElementById("hero-description").textContent = game.description;
    document.getElementById("lien-jouer").href       = game.lien_steam;
}

// Called by nav dot clicks
function changerImageManuellement(index) {
    currentIndex = index;
    updateSlide();
    resetAutoSlide();
}

// Update which slide and dot are active, and refresh the info panel
function updateSlide() {
    const slides = document.querySelectorAll(".slide-banner");
    const points = document.querySelectorAll(".point");

    slides.forEach((s, i) => s.classList.toggle("active", i === currentIndex));
    points.forEach((p, i) => p.classList.toggle("active", i === currentIndex));

    updateHeroInfo(currentIndex);
}

function startAutoSlide() {
    slideInterval = setInterval(() => {
        currentIndex = (currentIndex + 1) % heroGames.length;
        updateSlide();
    }, 5000);
}

function resetAutoSlide() {
    clearInterval(slideInterval);
    startAutoSlide();
}

// Kick everything off once the DOM is ready
document.addEventListener("DOMContentLoaded", buildCarousel);
