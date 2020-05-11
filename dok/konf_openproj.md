# Konfiguration von OpenProject (OP)

Ziel der Konfiguration ist, ein gutes Verhältnis zwischen der Komplexität der Konfiguration und der damit erreichten
Nutzbarkeit von Openproject zu erreichen.
Ein Nice-To-Have Feature mit einer massiv komplizierten Konfiguration zu erkaufen ist also beispielsweise nicht die Idee.

Die Konfigurationsmöglichkeiten in OpenProject sind umfangreich. Die "richtige" Konfiguration für unsere Bedürfnisse
zu finden entsprechend anspruchsvoll. Insbesondere zu beachten ist der "Scope" einer Konfiguration.

Scope (Wirkungsbereich) einer Konfiguration:
* Global (für alle Projekte)
* Für das aktuelle Projekt
* Für das aktuelle Projekt und die enthaltenen Unterprojekte

## Übersicht der Konfigurationselemente

* **OP-Projekt:** Um die Openproject-Projekte für uns schlank einzusetzen, verwenden wir die Projekte als Ordner für
gleich gelagerte Arbeitstypen. Wir erstellen also nicht pro SOGIS-Projekt ein OpenProject-Projekt.
* **"Work package":** Zentrales Element in OP, mit welchem ein Vorhaben oder ein Teil eines Vorhabens beschrieben wird.
    * "Work package type:" Vorhabenstyp (Tracker). Wir benötigen Projekt, Arbeitspaket, Tagesgeschäft, (Projekt-)Phase.
    * "Work package table:" Tabellarische Ansicht für eine Gruppe von Work packages mit mächtigen Filtermöglichkeiten.
    * "Work package status:" Fortschrittszustand eines Work package. Für ein Projekt beispielsweise "Realisierung".
* **"Workflow":** Konfiguration der möglichen Statusübergänge für ein work package type. 

## Openproject-Projektbaum

Um eine Übersicht aller Vorhaben zu gewährleisten, sind alle Projekte Kinder des **"Root-Projektes" SOGIS**. Die funktionalen
Einheiten werden als Kindprojekte abgebildet.

Kind-Projekte:
* **Vorhaben:** Beinhaltet alle Projekte, Arbeitspakete und Tagesgeschäfte, die im und mit dem AGI "laufen".
    * Riesenprojekt X  
    * _Templates: Umfasst Vorlagen, welche als "Quick Start" für das Erstellen von neuen Projekten und Arbeitspaketen
genutzt werden. 
* **Funktionale Einheiten:** Beinhaltet alle Issues, welche bezüglich Betrieb und Weiterentwicklung der funktionalen
Einheit offen sind.
    * WGC
    * Oereb
    * GDI-API
    * GRETL
    * QGIS Desktop
    * Metadaten (SIMI)
    * Geodatenbanken (Edit und Pub)
    * Datenbezug
    * ILI-Validator
    * Avgbs2Mtab
    * ...?
    
Die Layer-Rollouts sind Teil des SOGIS-Projektes.

## Work package types

Die im AGI gebräuchlichen Vorhabenstypen richten sich primär nach dem enthaltenen Arbeitsumfang:

* **Tagesgeschäft:** Weniger als 0.5 PT AGI Arbeitsaufwand, kein externer Aufwand
* **Arbeitspaket:** Weniger als 5 PT AGI Arbeitsaufwand, kein externer Aufwand
* **Projekt:** Mehr als 5 PT AGI Arbeitsaufwand, und oder externer Aufwand

weitere Vorhabenstypen:
* **Issue:** Ein Feedback aus Benutzersicht zu einer funktionalen Einheit, einer Konfiguration vor der Triage durch
das AGI. Entsprechend ist für ein Issue insbesondere noch nicht klar, mit welchem externen und internen Aufwand die
Fragestellung gelöst werden kann.
* **Phase:** Phasen eines Projektes (Konzept, Realisierung, ...)

## Matrix "Work package type" zu OP-Projekt

| |SOGIS (Root)|Vorhaben|Funktionale Einheiten|
|---|---|---|---|
|Projekt|-|X|-|
|Phase|-|X|-|
|Arbeitspaket|-|X|-|
|Tagesgeschäft|X|X|X|
|Issue|X|-|X|

## Fragen für OpenProject-Beratung

Benutzte Abkürzungen:
* FE: Funktionale Einheit
* OPP: OpenProject-Projekt

|Nr|Frage|Antwort|Typ|Done|
|---:|---|---|---|---|
|1|Ab wann hat die Projekt-Verschachtelungstiefe einen negativen Einfluss auf die Performance?|Verschachtelungstiefe von 3 ist kein Problem. Bei tieferer Verschachtelung abhängig von der Anzahl der Issues|Tech|Ja|
|2|Tickets in Version einer FE einem Abwicklungs-Projekt zuweisen? Ticket ist gleichzeitig in mehreren OPP relevant.|Ticket kann zu 0-1 Version zugewiesen werden (nicht n). --> Geeignete Konfig muss besprochen werden|Fach|Nein|  
|3|Tagesgeschäft in Vorhaben dem Layer-Rollout zuweisen?|Kein Problem. Layer-Rollout ist Version des Root-OPP "SOGIS" Der Version können Tickets aller Kind-OPP zugewiesen werden|Fach|Ja|
|4|Mit Docker starten, um die Konfiguration hinzubekommen, und dann migrieren?|Kein Problem, solange von genau einer Quell-Instanz migriert wird|Tech|Ja|
|5|Starten ohne das Laden der Beispielkonfiguration (demo data)|Kein Problem. Docker compose anpassen und anschliessend mittels Rails-Console Admin-Benutzer anlegen|Tech|Ja|
|6|Auth: Anbinden mehrerer LDAP-Verzeichnisse|Ja, geht. In OP-Benutzerverzeichnis ist vermerkt, auf welchem LDAP der Benutzer definiert ist.|Tech|Ja|
|7|Auth: Mischung von z.B. LDAP (interne Benutzer) mit "default Auth" für externe Benutzer|Ja, geht auch.|Tech|Ja|
|8|Auth: Auto-Login mit bestehendem Cookie|Ja, geht. Verfall des Cookies kann sowohl absolut "X Stunden nach dem Login" wie "nach X Stunden Inaktivität" konfiguriert werden.|Tech|Ja|
|9|Scoping bezüglich der Versionen verstehen "Gemeinsame Verwendung": Projektbaum, Projekthierarchie, ...|?|Fach|Nein|
|10|Funktioniert das Backlog auch mit eigenen Task-Typen?|?|Fach|Nein|
|11|Wieso kommen beim Rollout-Geschäft ungewünschte Status?|?|Fach|Nein|
|12|Feedback zu den zentralen "Pfeilern" der Konfiguration:<br/>- Abbildung der Projekte als "work package"<br/>- Strukturierung der "work packages" in Kindprojekten. Tabellarische Ansichten auf "alles" im Mutterprojekt.|?|Fach|Nein|

### Starten ohne das Laden der Beispielkonfiguration (demo data)

E-Mail vom 6. Mai 2020:

Anbei wie versprochen der Befehl zum Entfernen von Seed Daten aus der Instanz. In der produktiven Docker-Umgebung werden 
die Seeds im Service `seeder` aufgerufen. Wenn sie die "One container per process" Anleitung gefolgt haben, können Sie 
einfach die docker-compose.yml den Eintrag "seeder:" in Zeile 84-89 auskommentieren und dann einen neuen container 
damit starten.

Danach müssten Sie einen Adminnutzer anlegen:

1. Die Container ID finden über `docker ps | grep web | cut -d ' ' -f 1`
2. Eine Shell im Container spawnen über `docker exec -it <ID> bash`
3. In der Shell eine Rails Console starten über `RAILS_ENV=production bundle exec rails console`

In dieser Rails Console können Sie einen Nutzer anlegen mit `AdminUserSeeder.new.seed!`, der dann die Zugangsdaten admin / admin erhält.

Alternativ können Sie auch über die Konsole Daten entfernen, wenn Sie den Container nicht neustarten. Dazu folgen Sie die drei Schritte oben, und führen dann aus:
* Um alle Projekte zu löschen: Project.destroy_all
* Um alle Typen zu löschen: Type.destroy_all
* Um alle Status zu löschen: Status.destroy_all
* Um alle Prioritäten und Auflistungen zu löschen: Enumeration.destroy_all

Hier können Sie wahlweise Konfigurationen übrig lassen. Das Löschen der Projekte löscht auch alle darin enthaltenen Module, Arbeitspakete, usw.

## Interne Fragen

|Nr|Frage|Antwort|Done|
|---:|---|---|---|
|1|Layer Rollout Name: Eher a la 2020/1, damit nicht weit im Voraus terminiert werden muss|?|N|
