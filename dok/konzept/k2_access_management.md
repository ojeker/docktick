# Berechtigungsschema (Access Management)

Auftrag ist, ein Berechtigungsschema zu erstellen, welches "simpler als possible" ist.

Entsprechend wir auf die Nutzung vieler Features von OpenProject verzichtet. Die folgende Tabelle gibt eine Übersicht
der zu erwartenden Daten- und Konfigurationsänderungen in OpenProject.

|Änderung|Typ|Bemerkung|
|---|---|---|
|Issues erfassen / ändern|data|Soll / wird von allen AGI-MA und den GIS-Koordinatoren gemacht|
|OpenProject-Projekt erfassen|conf|Bedingt das Erstellen eines neuen OpenProjekt-Projekt. Ziel: Das Erfassen mittels Vorlage so einfach machen, dass es von allen AGI-MA gemacht werden kann.|
|Mitglied in Gruppe aufnehmen|conf|Ist nur projektbezogen oder bei Aenderung GIS-Koordinator notwendig, bedingt aber Admin-Rechte|
|Globale Einstellung ändern|conf|Ist nur notwendig, wenn wir uns bezüglich unserer Abläufe / Organisation stark ändern. Kommt im Jahr vieleicht einmal vor, muss bezüglich Impact auf die bestehende Konfig durchdacht sein. --> Wird nur durch AV oder AB Stv. gemacht|

Bemerkung: Bei einem neuen "grossen" Projekt können / sollen den direkt Projektbeteiligten (auch Externe) Schreibrechte für das Projekt vergeben werden, sofern sie weder GIS-Koordinatoren noch AGI-Mitarbeiter sind.
 
Resultierendes Berechtigungsschema:
 
|Gruppe|Berechtigungen|Bemerkung|
|---|---|---|
|read|Lesender Zugriff auf alle Projekte.|Zugriff mittels unpersönlichem Account für betroffene Anwender zur Verfolgung eines Tickets, ...|
|write|Schreibender Zugriff auf alles innerhalb der bestehenden Projekte|Gruppenmitglieder sind die AGI-MA, die GIS-Koordinatoren und punktuell Fachapplikationsverantwortliche|
|projectCreator|Erstellung neuer Projekte und Konfigurationsanpassung von bestehenden.|Gruppenmitglied ist ein technischer Benutzer, den alle AGI-MA bei Ferienabwesenheit der AV's für die Projekterstellung "nach Kochbuch" nutzen können.|
|globalAdmin|Anpassungen an der globalen Konfiguration.|Gruppenmitglieder AV und AV Stv. von OpenProject|

 Todo: 
 * Erarbeiten und Dokumentieren, wie ein neues Projekt mittels Template eröffnet werden kann.

 
 