function showResult(str) {
    if (str.length<3) {
      document.getElementById("livesearch").innerHTML="";
      return;
    }
    var xmlhttp=new XMLHttpRequest();

    xmlhttp.responseType = "json";

    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {

        data = xmlhttp.response;
        console.log(data);
        let html = "";
        if (data && data.length > 0) {
            data.forEach(function(item) {
                html += '<a href="jeu.php?id=' + item.id_jeu + '"><p>' + item.nom + '</p></a>';
                //"<form method='POST' action='recup_donnees.php'><button type='submit'><p>" + item.nom + "</p><input type='hidden' value='" + item.id_jeu + "'name='valeur'></button></form>";
            });
        }
    
        const div = document.getElementById("livesearch");
        div.innerHTML = html;
        div.style.border = data && data.length > 0 ? "1px solid #ccc" : "0px";
        
      }
    }
    xmlhttp.open("GET","gestion_recherche.php?q="+str,true);
    xmlhttp.send();
  }
