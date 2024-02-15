window.onload = function () {
    var data;

    function fetchTeams() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if ((xmlhttp.readyState === 4) && (xmlhttp.status === 200)) { 
                data = JSON.parse(xmlhttp.responseText);
                console.log("Retrieved data:", data);
                populateTable(data);
            }
        };
        xmlhttp.open("GET", "Fetch_Teams.php", true);
        xmlhttp.send();
    }

    function populateTable() {
        var tbody = document.querySelector('#teams tbody');
        tbody.innerHTML = '';
        console.log(data);

        data.forEach(function (item, i) {
            var row = tbody.insertRow(i);
            var flagImage = createImage('./icons/' + item.id + '.png');
            row.insertCell(0).innerHTML = flagImage.outerHTML;
            row.insertCell(1).textContent = item.name;
            row.insertCell(2).textContent = item.pool;
        });
    }

    function createImage(src) {
        var img = document.createElement('img');
        img.src = src;
        return img;
    }

    fetchTeams();

    document.getElementById('poolSort').addEventListener('click', function () {
        data.sort((a, b) => a.pool.localeCompare(b.pool));
        populateTable(data);
    });

    document.getElementById('teamSort').addEventListener('click', function () {
        data.sort((a, b) => a.name.localeCompare(b.name));
        populateTable(data);
    });
};