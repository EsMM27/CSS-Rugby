
function fetchVenue() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if ((xmlhttp.readyState === 4) && (xmlhttp.status === 200)) { 
                    var data = JSON.parse(xmlhttp.responseText);
                    console.log("Retrieved data:", data);
                    populateTable(data);
            }
        };
        xmlhttp.open("GET", "Fetch_Venues.php", true);
        xmlhttp.send();
    }
    
    function populateTable(data) {
        var tbody = document.querySelector('#venue tbody');
        console.log(data);
    
        data.forEach(function (item, i) {
            var row = tbody.insertRow(i);
            row.insertCell(0).textContent = i + 1;
            row.insertCell(1).textContent = item.name;
        });
    }

    

    fetchVenue();

