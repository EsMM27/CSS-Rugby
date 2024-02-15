let data;
let currentDateIndex = 0;

function generateDateRange(startDate, endDate) {
    const dateArray = [];
    let currentDate = new Date(startDate);

    while (currentDate <= new Date(endDate)) {
        dateArray.push(currentDate.toISOString().split('T')[0]);
        currentDate.setDate(currentDate.getDate() + 1);
    }

    return dateArray;
}

const xmlhttp = new XMLHttpRequest();
xmlhttp.open('GET', 'Fetch_results.php', true);
xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
        data = JSON.parse(xmlhttp.responseText);

        startDate = "2023-09-08";
        endDate = "2023-10-28";
        const allDates = generateDateRange(startDate, endDate);

        console.log(allDates);

        const updateTable = () => {
            populateTable(allDates[currentDateIndex]);
            document.getElementById('date').textContent = allDates[currentDateIndex];
        };

        const changeDate = (increment) => {
            currentDateIndex = Math.max(0, Math.min(allDates.length - 1, currentDateIndex + increment));
            updateTable();
        };

        const prevButton = document.getElementById('prevButton');
        const nextButton = document.getElementById('nextButton');

        prevButton.addEventListener('click', () => changeDate(-1));
        nextButton.addEventListener('click', () => changeDate(1));

        updateTable();
    }
};
xmlhttp.send();


function populateTable(selectedDate) {
    var tbody = document.querySelector('#table tbody');
    tbody.innerHTML = '';

    var matchesExist = false;

    data.forEach(function (item) {
        if (selectedDate && item.datetime.startsWith(selectedDate)) {
            matchesExist = true;

            var row = tbody.insertRow();
            row.insertCell(0).textContent = item.datetime;
            row.insertCell(1).textContent = item.stage;
            row.insertCell(2).appendChild(createImage('icons/' + item.team1_id + '.png'));
            row.insertCell(3).textContent = item.team1_name;
            row.insertCell(4).textContent = item.score;
            row.insertCell(5).textContent = item.team2_name;
            row.insertCell(6).appendChild(createImage('icons/' + item.team2_id + '.png'));
            row.insertCell(7).textContent = item.venue_name;
        }
    });

    if (!matchesExist) {
        var noMatchesRow = tbody.insertRow();
        var noMatchesCell = noMatchesRow.insertCell(0);
        noMatchesCell.colSpan = 8;
        noMatchesCell.textContent = "No matches on this date.";
        noMatchesCell.style.textAlign = "center";
    }
}

function createImage(src) {
    var img = document.createElement('img');
    img.src = src;
    return img;
}