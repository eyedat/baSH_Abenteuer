#!/bin/bash
clear
# Initialise the Title Art
file1="../art/red.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# Set up the script for this room. It's a simple one!
sleep 1
echo "Du bist in einem Raum, der einen seltsamen roten Schimmer hat."
echo "Bücherregale säumen die Wände – verstaubte Bände mit Titeln"
echo "kann nicht recht erkennen. Irgendwie wirken sie uralt."
echo
echo "In der Ecke steht ein sehr bequem aussehender Stuhl."
echo "Der einzige Ausgang befindet sich im Westen, zurück in die Richtung, aus der Sie gekommen sind."
echo
echo "Und was nun?"

# And the choices go here.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Gesicht, Wand treffen. Wand, triff Face." ;;
        s ) echo "Man kann nicht durch Wände gehen." ;;
        e ) echo "Hier nichts als Mauer." ;;
        w ) ./mainroom.sh
            exit ;;
		u ) echo "Sie sitzen in dem bequemen Sessel. Es ist, als würde man auf einer Wolke sitzen." ;;
		h ) echo "Du umarmst dich selbst und hoffst, dass die Bücher dich nicht verurteilen." ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h.";;
    esac
done

esac
exit
