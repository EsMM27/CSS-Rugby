var fadeOutTimeout;

function fetchPlayers() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if ((xmlhttp.readyState === 4) && (xmlhttp.status === 200)) { 
            data = JSON.parse(xmlhttp.responseText);
            console.log("Retrieved data:", data);
            populateTable(data);
        }
    };
    xmlhttp.open("GET", "Fetch_Players.php", true);
    xmlhttp.send();
}

function populateTable(data) {
    var tbody = document.querySelector('#players tbody');
    console.log(data);

    data.forEach(function (item, i) {
        var row = tbody.insertRow(i);
        var flagImage = createImage('./icons/' + item.team_id + '.png');
        row.insertCell(0).innerHTML = flagImage.outerHTML;
        row.insertCell(1).textContent = item.name;
        row.insertCell(2).textContent = item.abbrev;

        
        var infoLink = document.createElement('a');
        infoLink.href = item.id;
        infoLink.target = '_blank';
        infoLink.textContent = 'Info';

      
        infoLink.addEventListener('mouseover', function () {
            clearTimeout(fadeOutTimeout); 
            var playerId = item.id.slice(-5);
            console.log(playerId);
            var imageUrl = `https://www.rugbyworldcup.com/rwc2023/person-images-site/player-profile/${playerId}.png`;
            var altText = item.name;
            changeRightImage(imageUrl, altText);
        });

        infoLink.addEventListener('mouseout', function () {
            startFadeOut();
        });

        row.insertCell(3).appendChild(infoLink);
    });
}

function createImage(src) {
    var img = document.createElement('img');
    img.src = src;
    return img;
}

function changeRightImage(imageUrl, altText) {
    var rightImage = document.querySelector('#right img');
    rightImage.src = imageUrl;
    rightImage.alt = altText;
    rightImage.classList.remove('fade-out');
}

function startFadeOut() {
    fadeOutTimeout = setTimeout(function () {
        var rightImage = document.querySelector('#right img');
        rightImage.classList.add('fade-out'); 
    }, 500);
}

fetchPlayers();