var data;
var stages = [];

function populateStages(data) {
    data.forEach(function (item) {
        if (!stages.includes(item.stage)) {
            stages.push(item.stage);
        }
    });
}


var xmlhttp = new XMLHttpRequest();
xmlhttp.open('GET', 'Fetch_results.php', true);
xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
        data = JSON.parse(xmlhttp.responseText);
        populateStages(data);
        console.log(data);
        console.log(stages);

        var selectStage = document.getElementById('Stage');
        
        stages.forEach(function (stage) {
            var option = document.createElement('option');
            option.value = stage;
            option.text = stage;
            selectStage.appendChild(option);
        });

        selectStage.addEventListener('change', function () {
            filterAndPopulateTable(data, selectStage.value);
        });

        populateTable(data);
    }
};
xmlhttp.send();

function filterAndPopulateTable(data, selectedStage) {
    const filteredData = data.filter(match => selectedStage === 'all' || match.stage === selectedStage);
    populateTable(filteredData);
}

function populateTable(data) {
    var tbody = document.querySelector('#table tbody');
    tbody.innerHTML = '';

    data.forEach(function (item) {
        var row = tbody.insertRow();
        row.insertCell(0).textContent = item.datetime;
        row.insertCell(1).textContent = item.stage;
        row.insertCell(2).appendChild(createImage('icons/' + item.team1_id + '.png'));
        row.insertCell(3).textContent = item.team1_name;
        row.insertCell(4).textContent = item.score;
        row.insertCell(5).textContent = item.team2_name;
        row.insertCell(6).appendChild(createImage('icons/' + item.team2_id + '.png'));
        row.insertCell(7).textContent = item.venue_name;
    });
}

function createImage(src) {
    var img = document.createElement('img');
    img.src = src;
    return img;
}