#!/bin/bash
clear
# Initialise the Title Art
file1="../art/bigroom.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"

# This is close to the endgame, but affords the player a last set of things to try and do.
# Obviously if you use this framework to create a game of your own, you can extend this massively.
echo
sleep 1
echo "Du trittst durch die Tür und betrittst etwas, das aussieht wie eine Szene aus einem Film."
echo
sleep 3
echo "Vor dir steht ein langer Tisch. Drumherum saßen mehrere gut gekleidete"
echo "Personen, sowohl Männer als auch Frauen, die ein sehr kunstvoll aussehendes Abendessen zu sich nehmen."
sleep 2
echo "Seltsam."
echo
sleep 3
echo "Anscheinend wurde ein Platz für Sie am Tisch gedeckt."
echo
sleep 4
echo "Plötzlich nervös, nehmen Sie Platz und schauen sich die anderen Gäste an."
echo "Sind das die Leute, die Sie hierher gerufen haben? Sie versuchen, sie zu fragen, aber"
echo "scheinen sprachloser zu sein als eine Testperson in einem Portalspiel."
echo
sleep 4
echo
echo "Ein Kellner bringt ein Tablett und stellt es vor Sie hin. Anheben des Deckels,"
echo "Sie finden eine seltsame regenbogenfarbene Pille vor sich. Sehr 'Martix', denkst du"
echo "zu dir selbst. Was bedeutet das? Soll ich die Pille nehmen?"
echo "Ist das eine Art Test? Und wer SIND diese Leute?!"
echo
sleep 4
echo
echo "Was würdest du gern tun?"

while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Du stehst auf und siehst dich um. Nicht viel hier." ;;
        s ) echo "Sie werfen einen Blick auf die Einrichtung des Zimmers. Es ist ziemlich nett." ;;
        o ) echo "Da ist ein Vorhang - aber kein Fenster dahinter. Wie seltsam." ;;
        w ) echo "WER SIND DIESE LEUTE?!" ;;
		b ) ./end.sh
            exit ;;
		u ) echo "Du umarmst die Person neben dir. Ihm ist kalt und er bewegt sich nicht." ;;
        g ) ./bigroom.sh
            exit ;; 
        h ) file3="../script/hilfe.ben"
            cat $file3 ;; 
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, o, s, w, b, u, g und h.";;
    esac
done

esac
exit
