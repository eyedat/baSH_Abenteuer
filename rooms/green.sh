#!/bin/bash
clear
# Initialise the Title Art
file1="../art/green.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# Everybody clap your hands. I mean, here is the script.
sleep 1
echo "Du gehst zum Zauberer. Nun, vielleicht nicht - aber das hier"
echo "das Zimmer ist so grün, dass Sie genauso gut in Emerald City sein könnten."
echo "Ernsthaft. Denk an das Grünste, was du je gesehen hast"
echo "dann fügen Sie einen weiteren Koffer voller Grün hinzu. Es ist so schlimm."
echo
echo "Es kommt zu dir. Solche Schmerzen. Gibt es eine Tür? Wer weiß."
echo
echo "Was machst du jetz bloß?"

# And here's what you could have won... 
while true; do
    read -p "> " nsewuh
    case $nsewuh in
        n ) echo "Das Grün ist hier etwas intensiver. Hoppla." ;;
        s ) echo "Such green. Much bad. Go back. SCHWUPP." ;;
        o ) ./mainroom.sh
            exit ;;
        w ) echo "Du versuchst, nach Westen zu gehen, aber ALLES, WAS DU SEHST, IST GRÜN." ;;
		b ) echo "Sie denken darüber nach, Grün zu „verwenden“, stellen aber fest, dass es in diesem Land nicht erlaubt ist." ;;
		u ) echo "Du rollst dich zu einer Kugel zusammen und schaukelst hin und her." ;;
        g ) ./green.sh
            exit ;; 
        h ) file3="../script/hilfe.ben"
            cat $file3 ;; 
        * ) echo "Es tut mir leid, ich verstehe dich nicht. Befehle sind: n, o, s, w, b, u, g und h.";;
    esac
done

esac
exit
