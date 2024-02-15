
function fetchStats(endpoint, typeText) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            var data = JSON.parse(xmlhttp.responseText);
            console.log("Retrieved data:", data);
            populateTable(data);
            document.getElementById("type").textContent = typeText;
        }
    };
    xmlhttp.open("GET", endpoint, true);
    xmlhttp.send();
}

document.getElementById("selectOption").addEventListener("change", function () {
    var selectedStat = this.value;
    console.log("Selected Stat:", selectedStat);

    if (selectedStat === "option1") {
        fetchStats("Fetch_Stats_points.php", "Points");
    } else if (selectedStat === "option2") {
        fetchStats("Fetch_Stats_tackles.php", "Tackles");
    }
});
    

    function populateTable(data) {
        var tbody = document.querySelector('#stats tbody');
        tbody.innerHTML = '';
    
        data.forEach(function (item, i) {
            var row = tbody.insertRow(i);
            var flagImage = createImage('icons/' + item.team_id + '.png');
            row.insertCell(0).textContent = i + 1;
            row.insertCell(1).innerHTML = `<a href="${item.player_link}" target="_blank">${item.player_name}</a>`;
            row.insertCell(2).innerHTML = flagImage.outerHTML + item.team_name;
            row.insertCell(3).textContent = item.points;
        });
    }

    function createImage(src) {
        var img = document.createElement('img');
        img.src = src;
        return img;
    }

    fetchStats("Fetch_Stats_points.php", "Points");
