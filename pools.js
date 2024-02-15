function fetchData() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('GET', 'Fetch_pools.php', true);
  
    xmlhttp.onload = function () {
      if (xmlhttp.status >= 200 && xmlhttp.status < 300) {
        var data = JSON.parse(xmlhttp.responseText);
        console.log(data);
  
        populateTables(data);
      }
    };
  
  
    xmlhttp.send();
}

function populateTables(data) {
    data.forEach(function (item) {
      var poolId = 'Pool ' + item.pool;
  
      var tbody = document.getElementById(poolId);
      var flagImage = createImage('icons/' + item.id + '.png');
  
      var row = tbody.insertRow();
      row.insertCell().textContent = item.position;
      row.insertCell().innerHTML = flagImage.outerHTML + " " + item.team_name;
      row.insertCell().textContent = item.played;
      row.insertCell().textContent = item.w;
      row.insertCell().textContent = item.d;
      row.insertCell().textContent = item.l;
      row.insertCell().textContent = item.pf;
      row.insertCell().textContent = item.pa;
      row.insertCell().textContent = item.bonus;
      row.insertCell().textContent = item.pts;
    });
}

function createImage(src) {
    var img = document.createElement('img');
    img.src = src;
    return img;
}

fetchData();