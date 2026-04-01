function showResult(str) {
    if (str.length<3) {
      document.getElementById("livesearch").innerHTML="";
      document.getElementById("livesearch").style.border="0px";
      return;
    }
    var xmlhttp=new XMLHttpRequest();

    // If specified, responseType must be empty string or "text"
    xmlhttp.responseType = "json";

    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {

        data = xmlhttp.response;
        console.log(data);
      }
    }
    xmlhttp.open("GET","gestion_test.php?q="+str,true);
    xmlhttp.send();
  }
