#!/bin/bash

clear

# Logic in the game is stored in .ben files. This sample has just one 'logic' file.
# You can add more logic files by simply adding a 'sed' command and appropriate .ben file.
# First off, let us reset the game logic. Use this as an example.

sed -i='' 's/on/off/' ../logic/leverlogic.ben

# Who doen't love ASCII text, right?
# Next up, let's initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo

# Next up, let's load in the initial introduction. Script is also stored in .ben files.
sleep 5
file2="../script/opening.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file2"
file3="../script/hilfe.ben"
cat $file3
read -p "Press [ENTER] to start..."

#Okay, now that the introduction is out of the way, we can start the first room!
clear
file1="../art/titleart.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
sleep 1

# Here's where you introduce the room to the player. Be sure to tell them if there
# Are exits - but don't give too much away. Make it fun for them to explore!
echo
echo "Du erwachst und findest dich auf dem Boden eines großen Raumes wieder."
echo "Du hast noch dein Kissen, aber dein Bett und deine Bettdecke sind weg."
echo "Du stehst auf, benommen und verwirrt. Es ist ein Donnerstag, oder - um"
echo "zumindest - Sie denken, es ist. Du konntest nie ganz den Dreh raus bekommen"
echo "von Donnerstagen."
echo
echo "Sie können gerade Türen im Norden, Osten, Süden und Westen sehen."
echo "Es ist ziemlich kalt und du hast Hunger."
echo
echo "Und was nun?"

# Now we wait for their response - and send them somewhere accordingly.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./white.sh 
            exit ;;       # These lines will take the player to a new room - a new script file.
        s ) ./brown.sh 
            exit ;;       # Be sure to include 'exit' otherwise the game won't quit properly!
        o ) ./red.sh
        	exit ;;
        w ) ./green.sh
        	exit ;;
		b ) echo "Hier gibt es nichts, was du verwenden könntest." ;;     # Something to say? You can also just echo.
		u ) echo "Du umarmst dich schnell. Es ist nicht sehr befriedigend." ;;
        g ) ./mainroom.sh
            exit ;; 
        h ) file3="../script/hilfe.ben"
            cat $file3 ;; 
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, o, s, w, b, u, g und h.";;
    esac
done

esac
exit
