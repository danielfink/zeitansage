###Zeitansage und Datumsansage für den Raspberry Pi

Autor: Daniel Fink

####Hinweise

eSpeak und OMXPlayer müssen installiert sein:
```
sudo apt-get install espeak omxplayer
```

Installation der Scripte:
```
cd ~ && git clone https://github.com/danielfink/zeitansage && cd zeitansage && chmod +x Zeitansage.sh && chmod +x Datumsansage.sh
```

Zeitansage starten:
```
./Zeitansage.sh
```

Datumsansage starten:
```
./Datumsansage.sh
```

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=danielfink&url=https://github.com/danielfink/zeitansage&title=Zeitansage&language=&tags=github&category=software)
