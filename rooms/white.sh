#!/bin/bash
clear
# Initialise the Title Art
file1="../art/weissenraum.ben"
while IFS= read -r line
do
	echo "$line"
done <"$file1"
echo

#Setting up the room...
sleep 1
echo "Du rennst nach Norden und drückst dich durch die halboffene Tür da vorne."
echo "Der Raum, in dem Sie sich befinden, ist hell. Ein Schild an der Wand weist darauf hin"
echo "Sie, dass Sie im Weißen Raum sind. Ich denke, das erklärt, warum es so ist"
echo "so hell und so..."
echo

# Here we're going to check to see if the lever - the only logic we are using in this game - is on or off.
leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                echo "Am Ende des Raums befindet sich eine fein geschnitzte Statue."
                echo "Es ist ein Kätzchen, aus wunderschönem weißen Marmor gehauen."
                echo "Es gibt auch ein seltsames brummendes Geräusch von sich."
            else
                echo "Am Ende des Raums befindet sich eine kunstvoll geschnitzte Statue."
                echo "Es ist ein Kätzchen, aus wunderschönem weißen Marmor gehauen."
            fi 

echo
echo "Der einzige Ausgang ist nach Süden, den Weg zurück, den Sie gekommen sind."
echo
echo "Was hast du vor?"

# Now lets capture this room's actions. Note that here, the actions change depending on whether or not
# the lever is on or off. If it's on, you go elsewhere. If it's off, you don't. 
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Irgendwie denkst du, Mauern gelten nicht für dich. Tun sie aber leider." ;;
        s ) ./mainroom.sh
            exit ;;
        e ) echo "Geht nicht. Da ist eine Wand." ;;
        w ) echo "Ernsthaft? Obwohl dort eine Wand ist? Tut mir leid, das kannst du nicht machen." ;;
		u ) echo "Als du versuchst, die Statue zu benutzen, bemerkst du das es sich komisch anfühlt, also hörst du auf." ;;
		h ) leverstate=`cat ../logic/leverlogic.ben`
            if [ "$leverstate" = "on" ]; then
                ./kroo.sh
                exit
            else
                echo "Du umarmst die Statue. Es scheint ein wenig zu vibrieren. Seltsam..."
            fi 
            ;;
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, e, s, w, u und h.";;
    esac
done

esac
exit
