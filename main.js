var gameData;

function newGame(file, header){
    var xhr = new XMLHttpRequest;
    xhr.open("GET", file);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == XMLHttpRequest.DONE) {
            var jsonString = xhr.responseText;
            gameData = JSON.parse(jsonString);

            header.gameName = gameData[0].gameName;
        }
    };
    xhr.send();

}
