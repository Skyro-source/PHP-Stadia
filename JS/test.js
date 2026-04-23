const images = ['../Images/BannerHorizontal/CS2BannerHorizontal.jpg', '../Images/BannerHorizontal/TF2BannerHorizontal.jpg', '../Images/BannerHorizontal/ApexBannerHorizontal.jpg'];
let i = 0;

let image = document.querySelector("img");
let bouton = document.querySelector("button");

image.style.width = "50%";

//Ecouteur d'evenement au clic sur la balise main
bouton.addEventListener("click", maFonction);

function maFonction(){
    i++;
    image.src = images[i];

    if (i >= images.length)
}

