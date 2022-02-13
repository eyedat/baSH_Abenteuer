#!/bin/bash
clear

# This room gets a little artsy with sleep commands, to help with the
# narrative of the story. This is why there are two versions - foyer and foyer2.

# Initialise the Title Art
file1="../art/kroo.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# It's script time again...
sleep 1
echo "Was. Der. Tatsächlich. Oh MANN...."
echo
sleep 3
echo "Du hast die Statue eines wunderschönen Kätzchens umarmt. Wie dem auch sei...."
echo
echo "Du hast nicht erwartet, dass es zum Leben erweckt und transportiert wird"
echo "Sie in einen anderen Mystery Room. Das wird etwas seltsam."
echo
echo "Sie scheinen sich jetzt in einem kleineren Korridor zu befinden. Sie können"
echo "einen Schein sehen, der von den Räumen aus Osten und Westen kommt, und"
echo "südlich von dir ist eine große, alt aussehende Tür."
echo
echo "Und was machst du jetzt?"

# And once again the room logic.

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Du bepflanzt den Wand. Dummkopf." ;;
        s ) ./bigroom.sh
             exit ;;
        e ) ./gameroom.sh
            exit ;;
        w ) ./grue.sh
            exit ;;
		u ) echo "Hier gibt es nichts, was du verwenden könntest." ;;
		h ) echo "Nachdem du diese Katze umarmt hast, bist du dir nicht sicher, ob du versuchen solltest, dich noch einmal zu umarmen." ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h. ";;
    esac
done

esac
exit
