<?php

    session_start();
    session_regenerate_id(true);

    // Dértruit complètement la session et tout chose associé avec
    session_destroy();

    /** Une alternative à laquelle je pensais était de juste faire cela
     * unset($_SESSION["login"]);
     * Le problème est que évidemment, pour des trucs comme les jeux récents, on ne peut pas les mettre dans login puisqu'on doit l'enlever dès que l'utilisateur se déconnecte,
     * et si on les mets dans une variable différente, elle sera conservée entre chaque compte, ce qui n'est pas idéal. Il y'a peut-être une méthode pour associer une variable
     * à une autre variable, cependant ce genre de programmes est sensé être utilisé sur plusieures plateformes de toute façon, que ce soit un TV, un téléphone, une tablette ou un
     * PC; J'imagine que la meilleure option serait juste de renvoyer l'array dans une BDD, l'associer à l'ID de l'utilisateur et le fetch quand on en a besoin.
     */
    

    header("Location: acceuil.php");

?>