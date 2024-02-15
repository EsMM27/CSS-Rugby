var data;

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('GET', 'Fetch_Results2.php', true);
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            data = JSON.parse(xmlhttp.responseText);
            populateTable(data);
        }
    };
    xmlhttp.send();

    function populateTable(data) {
        var tbody = document.querySelector('#table tbody');
        tbody.innerHTML = '';
    
        tbody.addEventListener('click', function (event) {
            var target = event.target;
            if (target.tagName === 'BUTTON' && target.classList.contains('update-button')) {
                var row = target.closest('tr');
                var updatedTeam1Score = row.cells[3].querySelector('input').value;
                var updatedTeam2Score = row.cells[4].querySelector('input').value;
                var match_id = target.getAttribute('data-match-id'); 
                alert('Update button clicked. Team ' + match_id + ' Score: ' + updatedTeam1Score + ', Team 2 Score: ' + updatedTeam2Score);
                console.log('Match ID: ' + match_id);
                updateScores(match_id, updatedTeam1Score, updatedTeam2Score);
            }
        });
    
        data.forEach(function (item) {
            var row = tbody.insertRow();
            var flagImage1 = createImage('./icons/' + item.team1_id + '.png');
            var flagImage2 = createImage('./icons/' + item.team2_id + '.png');
    
            row.insertCell(0).textContent = item.datetime;
            row.insertCell(1).textContent = item.stage;
            row.insertCell(2).innerHTML = flagImage1.outerHTML + item.team1_name;
    
            var team1_scoreInput = createInput('number', item.team1_score);
            row.insertCell(3).appendChild(team1_scoreInput);
    
            var team2_scoreInput = createInput('number', item.team2_score);
            row.insertCell(4).appendChild(team2_scoreInput);
    
            row.insertCell(5).innerHTML = item.team2_name + flagImage2.outerHTML;
            row.insertCell(6).textContent = item.venue_name;
    
            var updateButton = createUpdateButton(item.match_id);
            row.insertCell(7).appendChild(updateButton);
        });
    }
    
    function createInput(type, value) {
        var input = document.createElement('input');
        input.type = type;
        input.value = value;
        return input;
    }
    
    function createUpdateButton(matchId) {
        var updateButton = document.createElement('button');
        updateButton.textContent = 'Update';
        updateButton.classList.add('update-button');
        updateButton.setAttribute('data-match-id', matchId);
        return updateButton;
    }

function updateScores(matchId, team1Score, team2Score) {
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.open('POST', 'update.php', true);
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    var data = 'match_id=' + encodeURIComponent(matchId) +
               '&team1_score=' + encodeURIComponent(team1Score) +
               '&team2_score=' + encodeURIComponent(team2Score);
    console.log(data);

    xmlhttp.onreadystatechange = function () {
        if ((xmlhttp.readyState === 4 && xmlhttp.status === 200)) {
                console.log('Scores updated successfully');
            }
        
    };
    xmlhttp.send(data);
}


function createImage(src) {
    var img = document.createElement('img');
    img.src = src;
    return img;
}