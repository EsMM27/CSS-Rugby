function populateNavbar() {
    var navbar = document.querySelector("nav");
  

    var links = [
      { text: "Venues", url: "venues.html" },
      { text: "Teams", url: "teams.html" },
      { text: "Players", url: "players.html" },
      { text: "Results", url: "results.html" },
      { text: "Results By Date", url: "resultsbyDate.html" },
      { text: "Pools", url: "pools.html" },
      { text: "Stats", url: "stats.html" },
      { text: "Login", url: "login.html" }
    ];
  
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
      if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
        var sessionData = JSON.parse(xmlhttp.responseText);
        var sessionEmail = sessionData.email;
    
        if (sessionEmail !== '') {
          var adminLink = { text: "Admin", url: "Admin.html" };
          links.splice(links.length - 1, 0, adminLink);
    
          var logoutLink = { text: "Logout", url: "logout.php" };
          links[links.length - 1] = logoutLink;
    
          console.log("Session Email:", sessionEmail);
        }
    
        links.forEach(function (linkData) {
          var link = document.createElement("a");
          link.href = linkData.url;
          link.textContent = linkData.text;
          navbar.appendChild(link);
        });
      }
    };
    
    xmlhttp.open("GET", "getSession.php", true);
    xmlhttp.send();
}
  populateNavbar();