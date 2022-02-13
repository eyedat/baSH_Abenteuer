#!/bin/bash
clear

# This is the endgame. This file does nothing but give you the final bit of storyline.
# Use (over-use) of 'sleep' is for dramatic effect - play around with it, see how it reads.

# Let's reset the lever, now that we're done with it.
sed -i='' 's/on/off/' ../logic/leverlogic.ben

# Initialise the Title Art
file1="../art/bigfinish.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
sleep 1
echo "Du schluckst die Pille und plötzlich sind überall Regenbögen um dich herum."
echo
sleep 4
echo "Du schaust nach unten und siehst, dass du auf einem Einhorn reitest. Auf einem Regenbogen."
sleep 3
echo
echo "Ein verdammtes EINHORN."
sleep 4
echo
echo "Das ist lächerlich. Das ist doch sicher eine Art Traum? Du kneifst dich"
echo "selbst und versuchst aufzuwachen. Warte, dir ist schwindelig..."
echo
sleep 5
echo "Du blinzelst und bist überrascht, dass du im Bett liegst."
echo "Du schaust auf dein Handy – es ist 5 Uhr morgens und definitiv Donnerstag. Hm."
echo "Ich schätze, es war alles ein Traum."
echo
sleep 7
echo "Du gehst aus dem Bett und erblickst plötzlich eine winzige Marmorfigur auf"
echo "deinem Nachttisch. Es ist ein wunderschön geschnitztes Kätzchen."
echo
sleep 5
echo "Wie zum Teufel ist das dahin gekommen?"
sleep 5
echo
echo "Unfähig herauszufinden, was Traum und was Realität ist, zuckst du mit den Schultern"
echo "und hebst die Figur auf. Es hat dich nirgendwohin transportiert"
echo "dieses Mal... aber wie ist es hierher gekommen? Was bedeutet das?"
echo
sleep 7
echo "unser Telefon summt. Es ist ein Anruf von einer unterdrückten Nummer. Normalerweise "
echo "gest dann du nicht ran, aber du hast das Gefühl, dass dieser Anruf wichtig sein könnte."
sleep 5
echo
echo "Sie nehmen den Anruf an und eine elektronische Stimme sagt Ihnen vier Worte"
echo "before the line goes dead."
sleep 3
echo
echo "Nur vier Worte."
sleep 7
echo
echo "DAS KÄTZCHEN BEOBACHTET DICH."
echo
sleep 9
echo
file1="../art/bigfinish.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
echo
read -p "Press [ENTER] to exit..."
echo
clear
file1="../art/titleart.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo
echo "Vielen Dank, dass Sie die Demo von BashVenture spielen. Ziemlich zufällige Geschichte, ich weiß,"
echo "aber das Ziel war es, die Funktionalität zu demonstrieren, nicht einen Pulitzer-Preis zu gewinnen."
echo 
echo "Wer auch immer Sie sind, woher Sie auch kommen – leben Sie lang und in Wohlstand. Bewahren Sie Ihr lächeln!"
echo
echo "                                                                - @BenNunney"
echo

# That's all, folks!

exit
