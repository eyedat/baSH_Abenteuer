#!/bin/bash
clear
# Initialise the Title Art
file1="../art/kroo2.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# So here's a little story all about how this script got flip-turned upside down...
sleep 1
echo "Du bist in einem Korridor, aber es ist ziemlich klein. Geh dahin"
echo "das erste Mal, indem er eine Statue eines Kätzchens umarmt. Standard."
echo
echo "Du siehst ein Leuchten aus den Räumen zu deinem Osten und Westen kommen, und"
echo "südlich von dir ist eine große, alt aussehende Tür."
echo
echo "Was möchtest du tun?"

# Imma let you finish, but here's the room choices.

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Sie bepflanzen die Wand. UMPF." ;;
        s ) ./bigroom.sh
            exit ;;
        e ) ./gameroom.sh 
            exit ;;
        w ) ./grue.sh
            exit ;;
		u ) echo "Hier gibt es nichts, was du verwenden könntest." ;;
		h ) echo "Nachdem du diese Katze umarmt hast, bist du dir nicht sicher, ob du versuchen solltest, dich noch einmal zu umarmen." ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h.";;
    esac
done

esac
exit
