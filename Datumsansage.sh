#!/bin/bash
#
## Datumsansage Auf Deutsch
#
## Version 0.1
#
## Autor: Daniel Fink

# Kardinalzahlen werden in Ordinalzahlen umgewandelt.
case "`date +%e`" in
        " 1") Tag=erste                 ;;
        " 2") Tag=zweite                ;;
        " 3") Tag=dritte                ;;
        " 4") Tag=vierte                ;;
        " 5") Tag=fünfte               ;;
        " 6") Tag=sechste               ;;
        " 7") Tag=siebte                ;;
        " 8") Tag=achte                 ;;
        " 9") Tag=neunte                ;;
        "10") Tag=zehnte                ;;
        "11") Tag=elfte                 ;;
        "12") Tag=zwölfte              ;;
        "13") Tag=dreizehnte            ;;
        "14") Tag=vierzehnte            ;;
        "15") Tag=fünfzehnte           ;;
        "16") Tag=sechzehnte            ;;
        "17") Tag=siebzehnte            ;;
        "18") Tag=achtzehnte            ;;
        "19") Tag=neunzehnte            ;;
        "20") Tag=zwanzigste            ;;
        "21") Tag=einundzwanzigste      ;;
        "22") Tag=zweiundzwanzigste     ;;
        "23") Tag=dreiundzwanzigste     ;;
        "24") Tag=vierundzwanzigste     ;;
        "25") Tag=fünfundzwanzigste     ;;
        "26") Tag=sechsundzwanzigste    ;;
        "27") Tag=siebenundzwanzigste   ;;
        "28") Tag=achtundzwanzigste     ;;
        "29") Tag=neunundzwanzigste     ;;
        "30") Tag=dreißigste            ;;
        "31") Tag=einunddreißigste      ;;
esac

# eSpeak-Ausgabe wird in WAVE_Datumsansage gespeichert.
espeak -vde "Heute ist `date +%A` der $Tag `date +%B` `date +%Y`." -w WAVE_Datumsansage

# OMXPlayer gibt WAVE_Datumsansage aus.
omxplayer WAVE_Datumsansage

# WAVE_Datumsansage wird wieder gelöscht.
rm WAVE_Datumsansage
