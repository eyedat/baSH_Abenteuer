#!/bin/bash
clear
# Initialise the Title Art
file1="../art/bigfinish.ben"
while IFS= read -r line
do
    echo "$line"
done <"$file1"
echo

# I like this room. There is no way to get out of it alive.
sleep 1
echo "Dies ist ein langer Raum, und wenn Sie ihn hinuntergehen, sehen Sie eine Person."
echo "Endlich! Eine andere Person! Du rennst auf die schattenhafte Gestalt zu"
echo "aber dann halt tot. Das ist nicht... nein... das kann nicht sein. Es ist ... es ist ..."
echo "ES IST EIN GRUE."
sleep 3
echo
echo "Nein. NEIN! Sie weinen, als er sich zu Ihnen setzt und, anstatt Sie zu schlagen"
echo "Tod, fängt an, Ihnen einige seiner Grue Poetry vorzulesen. Es ist schrecklich. Deine"
echo "Das Gehirn beginnt zu schmelzen und als Folge beginnt Ihre Nase zu bluten."
echo
sleep 5
echo "Ihnen wird schwindelig. Du kannst nicht klar denken. Wie Sie auf die fallen"
            echo "Boden, dein eigenes Blut und Gehirn überall um dich herum, beginnst du"
            echo "sich zu fragen, warum der Grue dich nicht einfach so schnell getötet hat"
            echo "die meisten tun es. Verdammte Studenten der Geisteswissenschaften."
            echo
            echo "Sie gleiten in die Bewusstlosigkeit."
            sleep 4
            echo "DU BIST TOT."
            echo
            read -p "Press [ENTER] to try again..."
            ./mainroom.sh

exit
