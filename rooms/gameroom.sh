#!/bin/bash
clear
# Initialise the Title Art
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# This room gives the player a typical poisoned apple style scenaro.
# Just because something looks shiny and fun, doesn't make it any
# less deadly.
sleep 1
echo "Dieses Zimmer ist klein, hat aber einen ziemlich süß aussehenden Computer"
echo "auf einem Schreibtisch in der Mitte. Heißt das ja!"
echo "Steam ist installiert, und es sieht aus wie die gesamte Bibliothek von"
echo "Spielen die installiert sind! Dies ist ein epischer Gaming-Rig."
echo
echo "Der einzige Ausweg ist nach Osten, den Weg zurück, den du gekommen bist, aber..."
echo "glänzend. Vielleicht wäre es unhöflich, sich NICHT hinzusetzen und ein bisschen zu spielen."
echo
echo "Was steht an?"

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "WAND IST DA." ;;
        s ) echo "Nö. Mauer." ;;
        w ) ./kroo2.sh
            exit ;;
        e ) echo "Du wolltest nach Osten gehen, dann hast du eine Wand ins Gesicht geschlagen." ;;
		u ) echo
            echo "Sie sitzen und spielen. Und Spiel. Und Spiel. Du vergisst die Zeit,"
            echo "und Essen und Menschen. Du merkst, dass du nicht aufstehen kannst. Du kannst dich nicht"
            echo "bewegen. Du klebst am Stuhl fest!"
            echo
            sleep 4
            echo "Tage vergehen. Wochen. Du hast ein Spiel nach dem anderen gespielt, aber..."
            echo
            echo "Dein Körper gibt auf. Mit deinem letzten Atemzug wird dir das klar"
            echo "von gamerpoints alleine kann man nicht leben. Du schließt zum letzten Mal deine Augen."
            sleep 4
            echo
            echo
            echo "DU BIST TOT."
            echo
            read -p "Press [ENTER] to try again..."
            ./mainroom.sh
            exit

        ;;
		h ) echo "Du umarmst den Computer. Nerd." ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h.";;
    esac
done

esac
exit
