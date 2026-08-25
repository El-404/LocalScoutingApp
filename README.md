I believe main.cpp is the backend where you can make queries and all that, but I haven't been able to really get into that.

Main.js contains a function that takes in (JSON file, header to change) and changes the header based on the parsed json file

idk the jargon for Main.qml, so I'll describe it the best I can. It holds all the basic gui elements such as the header, footer, etc and it has a stackView in the center which changes contents.

MainPage.qml is essential the same as index.html, but it gets pasted into the middle of Main.qml (I think that's how it works) This was the place where you put in the scouting data

Objective.Qml is basically a struct/class that holds objective data

QrCodePage.qml was supposed to be the qr code generator for uploading the data

gameInfo.json is an example of the data for each event/game. Aka what teams are there, what game it is, all the objectives in said game, etc
