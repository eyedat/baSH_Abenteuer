#!/bin/bash
clear

# This is a repeat of the opening room in the start.sh file - if the player
# wants to go back to the main room, this saves going through the whole
# start script over again.

# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# Shakesphere wrote this, honest.
sleep 1
echo "Du bist wieder in dem Raum, in dem du zuerst aufgewacht bist."
echo "Es ist riesig. Sie können nicht wirklich ergründen, wie groß, aber es dauerte"
echo "lange genug, um von diesem letzten Raum zurück in die Mitte zu gelangen"
echo "Dieses hier. Sie fragen sich, wie Sie hierher gekommen sind und wer dafür verantwortlich ist."
echo
echo "Sie können gerade Türen im Norden, Osten, Süden und Westen sehen."
echo
echo "Was schlägst du vor?"

# And the room logic once again.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./white.sh
            exit ;;
        s ) ./brown.sh
             exit ;;
        e ) ./red.sh 
            exit ;;
        w ) ./green.sh
            exit ;;
		u ) echo "Hier gibt es nichts, was du verwenden könntest." ;;
		h ) echo "Du umarmst dich schnell. Es ist nicht sehr befriedigend." ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h.";;
    esac
done

esac
exit
