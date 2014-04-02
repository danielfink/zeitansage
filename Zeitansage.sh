#!/bin/bash
#
## Zeitansage auf Deutsch
#
## Version 0.1
#
## Autor: Daniel Fink

# "Es ist eins Uhr..." wird zu "Es ist ein Uhr...".
if [ "`date +%k`" = " 1" ]; then
 Stunden=ein
else
 Stunden=`date +%k`
fi

# Bei vollen Stunden wird die Null für die Minuten entfernt.
if [ "`date +%-M`" = "0" ]; then
 Minuten=""
else
 Minuten=`date +%-M`
fi

# eSpeak-Ausgabe wird in WAVE_Zeitansage  gespeichert.
espeak -vde "Es ist $Stunden Uhr $Minuten." -w WAVE_Zeitansage

# OMXPlayer gibt WAVE_Zeitsage aus.
omxplayer WAVE_Zeitansage

# WAVE_Zeitansage wird wieder gelöscht.
rm WAVE_Zeitansage
