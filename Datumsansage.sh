#!/bin/bash
#
## Datumsansage Auf Deutsch
#
## Version 0.1
#
## Autor: Daniel Fink

# Kardinalzahlen werden in Ordinalzahlen umgewandelt.
case "`date +%e`" in
        " 1") day=erste                 ;;
        " 2") day=zweite                ;;
        " 3") day=dritte                ;;
        " 4") day=vierte                ;;
        " 5") day=fÃ¼nfte               ;;
        " 6") day=sechste               ;;
        " 7") day=siebte                ;;
        " 8") day=achte                 ;;
        " 9") day=neunte                ;;
        "10") day=zehnte                ;;
        "11") day=elfte                 ;;
        "12") day=zwÃ¶lfte              ;;
        "13") day=dreizehnte            ;;
        "14") day=vierzehnte            ;;
        "15") day=fÃ¼nfzehnte           ;;
        "16") day=sechzehnte            ;;
        "17") day=siebzehnte            ;;
        "18") day=achtzehnte            ;;
        "19") day=neunzehnte            ;;
        "20") day=zwanzigste            ;;
        "21") day=einundzwanzigste      ;;
        "22") day=zweiundzwanzigste     ;;
        "23") day=dreiundzwanzigste     ;;
        "24") day=vierundzwanzigste     ;;
        "25") day=fÃ¼nfundzwanzigste     ;;
        "26") day=sechsundzwanzigste    ;;
        "27") day=siebenundzwanzigste   ;;
        "28") day=achtundzwanzigste     ;;
        "29") day=neunundzwanzigste     ;;
        "30") day=dreiÃigste            ;;
esac

# eSpeak-Ausgabe wird in WAVE_Datumsansage gespeichert.
espeak -vde "Heute ist `date +%A` der $day `date +%B` `date +%Y`." -w WAVE_Datumsansage

# OMXPlayer gibt WAVE_Datumsansage aus.
omxplayer WAVE_Datumsansage

# WAVE_Datumsansa wird wieder geloescht.
rm WAVE_Datumsansage
