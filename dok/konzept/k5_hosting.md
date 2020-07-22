# K5 Erarbeitung Entscheid internes / externes Hosting

## Varianten

* Kantonsintern, AIO
* Kantonsintern, AGI
* Cloud mit Bizagi
* Cloud bei openproject.com

## Entscheid

Wir betreiben openproject mit Cloud-Hosting auf openproject.com

### Hintergründe des Entscheides

* Kantonsintern, AIO: Kommt nicht in Frage - bedingt Eingabe von Projekt bei AIO. Einführung damit frühestens Ende 2022.
* Kantonsintern, AGI: Wäre machbar, bedingt aber vertieften Aufbau von Know-how ausserhalb unserer GEO-Kernkompetenzen.
* Cloud mit Bizagi: Wäre machbar, bedingt aber vertieften Aufbau von Know-How zu sowohl openproject und der entsprechenden cloud.
    * Ist damit nicht attraktiv.
 * Cloud bei openproject.com
    * Attraktiv, da preislich OK und sorglos-paket, bei dem man sich um wenig kümmern muss.
    * Integration mit IDP ist im Angebot enthalten - Nutzung der internen "NT-Accounts" ist damit, sofern alles klappt, möglich. 
    * Wermutstropfen:   
        * Dump nur auf Bestellung erhältlich
        * Lizenzierung passiert über die Anzahl der registrierten Benutzer.
        
## Abschätzung der benötigten Benutzer

**18** Redmine-Benutzer haben sich von Januar - Juli 2020 mindestens einmal angemeldet.

34 sind total im Redmine aktuell erfasst.

### Rollen und Zugriffsform

|Rolle|Zugriffsform|Anzahl notwendige Benutzer|Bemerkungen|
|---|---|---|---|
|AGI-Mitarbeiter|Personalisiert|13|Inkl. Stelle für Entwickler|
|GIS-Koordinatoren|Personalisiert|6|ARP, AWJF, ALW, AfU, AVT, ADA|
|"Externe" Anwendungsverantwortliche|Personalisiert|1|**Macht keinen Sinn - soll über Key2Help laufen oder alternativ über GIS-Koordinator.**<br>Ausnahme: Allenfalls Cédric, da dort kein GIS-Koordinator vorhanden<br><br>(Frank BauGK, Andi Uplus, ...)|
|Projektteammitglieder AGI-Projekte|Teilweise Personalisiert|10|Für PL und aktive an den AGI-Teilen involvierte Teammitglieder. |
|Projektteammitglieder Trio-Projekte|AGI: Personalisiert|0|In Projekt vertretene AGI-MA pflegen die Einträge im openproject. Für die "anderen" Projektmitglieder: Lesender unpersönlicher Zugriff|
|Weitere Interessierte|Pauschalzugang|1|Lesender Zugriff auf alles. Mit einprägsamem Benutzername und halbjährlich wechselndem einfachem Passwort|
|Reserve|?|5|Für nicht antizipierte Fälle|
|---|---|---|---|
|**Summe Benutzer**||**36**||
 






