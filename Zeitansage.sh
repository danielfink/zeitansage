#!/bin/bash
#
## Zeitansage auf Deutsch
#
## Version 0.1
#
## Autor: Daniel Fink

# "Es ist eins Uhr..." wird zu "Es ist ein Uhr...".
if [ "`date +%k`" = "1" ]; then
 hour=ein
else
 hour=`date +%k`
fi

# Bei vollen Stunden wird die Null nach dem Wort Uhr entfernt.
if [ "`date +%-M`" = "0" ]; then
 minute=""
else
 minute=`date +%-M`
fi

# eSpeak-Ausgabe wird in WAVE_Zeitansage  gespeichert.
espeak -vde "Es ist $hour Uhr $minute." -w WAVE_Zeitansage

# OMXPlayer gibt WAVE_Zeitsage aus.
omxplayer WAVE_Zeitansage

# WAVE_Zeitansage wird wieder geloescht.
rm WAVE_Zeitansage
