BashVenture - Abenteuer für Bash
================================

Sie befinden sich in einem Git-Repository. Code umgibt Sie. Es gibt Verzeichnisse im Norden, Süden, Osten und Westen.<br>Hier gibt es eine README-Datei!


Einführung
------------

Eines der allerersten Computerspiele, die ich gespielt habe, war Colossal Cave, auch bekannt als „Adventure“. Weithin als eines DER originalen klassischen textbasierten Adventure-Spiele angesehen, das vor Zork und anderen entstand, bereitete es die Kulisse für eine neue Ära der Mensch-Computer-Interaktion und inspirierte unzählige Softwareentwickler, Dinge zu bauen, die eine menschlichere Note hatten.

Im Zeitalter von Hochleistungsgrafiken und hyperrealistischem Gameplay ist es meiner Meinung nach wichtig, sich daran zu erinnern, dass eine klug erzählte Geschichte jeden Tag ein gut gerendertes Polygon schlägt.

Deshalb baue ich BashVenture. Ich wollte einen Weg finden, wieder ein bisschen Leben in das textbasierte Abenteuerspielformat zu bringen, ohne ein erfahrener Programmierer sein zu müssen. BashVenture ist ein einfacher Satz einfach zu bearbeitender Skripte und Logikdateien, die Sie umformulieren und umgestalten können, um Spiele zu erstellen, die so einfach oder so komplex sind, wie Sie möchten.

Spielen Sie die Demo, forken Sie das Repo und versuchen Sie, Ihr eigenes fesselndes, gut erzähltes Abenteuer zu erschaffen! Alles, worum ich bitte, ist, dass Sie hier in der Spieleinführung zurückverlinken, damit andere sehen können, wie einfach es ist, auch ein eigenes Spiel zu erstellen.


Spielen Sie die Demo von BashVenture!
-----------------------------

Sie müssen das Repo nicht herunterladen, um die Spielmechanik auszuprobieren! BashVenture wurde entwickelt, um über eine Telnet/SSH-Verbindung ausgeführt zu werden. Ich habe eine Testinstanz eingerichtet, die jeder spielen kann – also spring auf den Server und probiere es aus!

```bash:
ssh bashventure@gkly.co
```

Passwort:<br>
```
xyzzy
```


NB - Wenn Sie ein Windows-Benutzer sind, können Sie trotzdem am Spaß teilnehmen. Laden Sie [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) herunter und verwenden Sie die obigen Anmeldeinformationen. Einfach!



Wie das alles funktioniert
----------------

BashVenture - oder jedes Spiel, das Sie damit erstellen - ist ein einfacher Satz von Bash-Skriptdateien, die Grafiken und Text anzeigen, auf die Eingabe eines Benutzers warten und entsprechend auf diese Eingabe reagieren. Normalerweise bewegt sich ein Spieler dabei auf einer „Karte“ aus miteinander verbundenen Skriptdateien, Räumen genannt, um herauszufinden, wo er sich befindet, was er tun muss und wohin er als nächstes gehen muss.

Spiele können auch Logik mit unterschiedlichem Komplexitätsgrad haben, von einer einfachen Reihe von Schaltern und Hebeln (wie in der Demo) bis hin zu komplexem Codebreaking oder Secret-Sharing. In BashVenture ist die Logik vollständig dateibasiert – wenn Sie beispielsweise einen Schalter umlegen, wird ein Eintrag in der entsprechenden Logikdatei geändert. Dies bedeutet, dass Logikzustände Räume und den Tod von Spielern überschreiten – Sie können die Logik nach Belieben zurücksetzen, anstatt sie an einen bestimmten Raum oder Bereich oder eine bestimmte Lebensdauer zu binden, wenn Sie die Art von Spieler sind, die häufig stirbt.

Ein Spieler bewegt sich durch das Spiel, indem er Befehle erteilt. Die voreingestellten Befehle sind north, south, east, west, use und hug. Denn umarmen ist besser als schießen. Der Benutzer entscheidet, welche Vorgehensweise zu ergreifen ist, indem er jeweils n, s, e, w, u oder h eingibt. Sie können dies vollständig anpassen, indem Sie Ihre eigenen Befehle hinzufügen.

Es gibt eine Einführung und eine Art Endspiel – und einige Bösewichte und Dinge, die Sie auf dem Weg töten können. Ich empfehle dringend, dass Sie, bevor Sie forken und versuchen, ein eigenes Spiel zu schreiben, die Demo spielen und ein Gefühl dafür bekommen, wie die Spielmechanik funktioniert.

Die Magie eines guten Abenteuerspiels liegt im Geschichtenerzählen! Schreiben Sie gut, testen Sie oft und verkomplizieren Sie die Dinge nicht..



What's included in this framework?
----------------------------------

In diesem Projekt gibt es vier Dateitypen, die in ihre jeweiligen Unterverzeichnisse aufgeteilt sind:

### Art
Jeder liebt ein bisschen ASCII-Kunst, oder? Hier sind ein paar Beispieldateien mit Grafiken enthalten - aber wenn Sie selbst ein Spiel erstellen und mehr Grafiken einfügen möchten, ist dies der richtige Ort dafür. Das Titelbild wird aus Gründen der Einheitlichkeit in jedem Raum angezeigt.

### Rooms
Jeder einzelne „Raum“ im Spiel wird in einer separaten Raumdatei gespeichert. Dies ist ein metaphorischer Raum – es könnte ein Waldgebiet sein, eine Höhle, der Mond, Spaaaaace, was auch immer. In dieser Demo gibt es Räume und Korridore - die Dateien sehen identisch aus. Es ist alles im Wortlaut.

### Script
Während die Raumdateien den Großteil der speziellen Formulierungen jedes Raums enthalten, enthalten die Dateien in diesem Ordner längere Geschichten und den Einführungstext. Wenn Sie große Textblöcke aus Dateien in Ihrem Spiel anzeigen möchten, sollten Sie sie im Skriptordner ablegen.

### Logic
Was ein textbasiertes Abenteuer zu mehr als einem einfachen Labyrinthspiel macht, ist die Logik. Hier können Sie Schalter setzen, Benutzer Wörter zuordnen lassen oder Geheimnisse finden. Im Demospiel gibt es nur ein Stück Logik und nur ein Stück - aber Sie können so viel Logik hinzufügen, wie Sie möchten! Ordnung halten – die Logik lebt im Logikordner.



Setting it up yourself
----------------------

Wenn Sie die Demo spielen, werden Sie feststellen, dass Sie sich nur beim Server anmelden müssen und das Spiel automatisch startet. In diesem Fall habe ich den Benutzer in ein Chroot-Gefängnis gesteckt und die ./adventure-Datei als Shell festgelegt – was auch immer passiert, der Spieler kann nicht aus dem Spiel ausbrechen und Systemdateien durchsuchen.

### Allowing for Multiple Players

Wenn Sie einen Blick auf das Skript ./adventure.sh werfen, werden Sie feststellen, dass mehrere Spieler behandelt werden, indem für jeden Spieler, der sich mit dem Server verbindet, eine neue Spielinstanz hochgefahren wird. BashVenture hat hier eine Abhängigkeit von uuid-runtime, da es eine neue und vorübergehende eindeutige Kennung für jeden neuen Spieler generiert.

Das Skript prüft, ob die uuidgen-Laufzeitumgebung installiert ist, und ergreift die entsprechende Aktion – Sie müssen die Datei also nicht bearbeiten, um die Mehrbenutzerunterstützung zu aktivieren oder zu deaktivieren. Alles, was Sie tun müssen, ist sicherzustellen, dass die uuid-runtime-Abhängigkeit auf Ihrem Server (und gegebenenfalls in Ihrem Chroot-Gefängnis) installiert ist. Installieren Sie dazu einfach das folgende Paket:

```bash:
sudo apt-get install uuid-runtime
```

Beachten Sie, dass uuidgen mit OS X und OS X Server geliefert wird, aber in einigen Linux-Distributionen nicht standardmäßig installiert ist.

Wenn Sie nicht mehrere Spieler gleichzeitig aktivieren möchten, stellen Sie einfach sicher, dass sich alle Spieldateien in der richtigen Ordnerstruktur befinden, installieren Sie sie irgendwo (normalerweise im Home-Ordner eines Benutzers) und führen Sie die ./adventure-Datei aus

### Probleme beim Ausführen des Spiels? Komische Fehler bekommen?

Überprüfen Sie die Berechtigungen für die „Adventure“-Datei und den Hauptordner für das Spiel. Wenn nötig, chmod +x, um alle Spieldateien ausführbar zu machen.



Beitrag & Lizenz
--------------

Zukünftige Versionen dieses Frameworks sind geplant, mit massiven Erweiterungen der logischen Seite der Dinge. Ich freue mich über jeden Beitrag, also zögern Sie nicht, einen Beitrag zu leisten. Wenn Sie Ideen für die Richtung haben, die das Framework einschlagen sollte, zögern Sie bitte nicht, sich mit uns in Verbindung zu setzen (mailto:mail@bennunney.com).

Dieser Code wird unter der MIT-Lizenz veröffentlicht. Weitere Informationen dazu, was dies bedeutet und wie Zuschreibungen vorgenommen werden, finden Sie in der LIZENZ-Datei.



Acknowledgements
----------------

Thanks to [@apetro](https://github.com/apetro/BashVenture.git) it ist the Original: https://github.com/apetro/BashVenture.git

Comments, questions, suggestions? [Get in touch.](mailto:eyedat@gmail.com).
