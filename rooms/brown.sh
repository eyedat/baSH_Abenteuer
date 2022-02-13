#!/bin/bash
clear
# Initialise the Title Art
file1="../art/brown.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo
sleep 1

# Here's this room's script.

echo "Du rennst nach Süden und durch einen offenen Torbogen in einen dunklen, schmuddeligen Ort."
echo "Der Teppich sieht aus, als hätte man sich in den 70ern darauf übergeben, und der Ort riecht ein wenig nach"
echo "Kohl. Dies könnte durchaus jedes Altersheim sein, das jemals gebaut wurde, zusammen"
echo "an einem Ort. Es ist tragisch."
echo
echo "Seltsamerweise ist jedoch ein Hebel in die rechte Wand eingelassen."

# Here we tell the player whether the lever is on or off.
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "Das letzte Mal, als Sie in diesem Raum waren, haben Sie den Hebel umgelegt. Er ist immernoch eingeschaltet."
            else
                echo "Es sieht so aus, als wäre dieser ausgeschaltet."
            fi 
echo
echo "Der einzige Ausgang ist Norden, den Weg zurück, den Sie gekommen sind."
echo
echo "Was gedenkst du zu tun?"

# In this set of actons lies the logic switch used later in the game.
# You have to set this switch to reach the endgame.
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) ./mainroom.sh 
            exit ;;
        s ) echo "Du versuchst, durch die Wand zu gehen. Das wird nichts!" ;;
        o ) echo "Okay, lass mich dir diese ganze 'Mauer'-Sache erklären..." ;;
        w ) echo "Echt jetzt? Obwohl die Wand? Tut mir leid, das get überhapt nicht!" ;;
		b ) leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "Nachdem Sie es bereits eingeschaltet haben, versuchen Sie, es auszuschalten. Und scheitern."
            else
                sed -i='' 's/off/on/' ../logic/leverlogic.ben
                echo "Sie schieben den Hebel auf „Ein“ und hören an anderer Stelle im Gebäude ein Brummen."
            fi 
        ;;


		u ) echo "Du umarmst dich selbst und hoffst, dass dir niemand zusieht." ;;
        g ) ./brown.sh
            exit ;; 
        h ) file3="../script/hilfe.ben"
            cat $file3 ;; 
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, o, s, w, b, u, g und h.";;
    esac
done

esac
exit
