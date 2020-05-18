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

Um eine Übersicht aller Vorhaben zu gewährleisten, sind alle Projekte Kinder des **"Root-Projektes" SOGIS**. 
Im Root-Projekt sind die Versionen der Geodaten-Konfigurationen enthalten, da die Work-Items aus mehreren 
Kindprojekten stammen können.
Ebenfalls Teil des Root-Projektes sind 

Kind-Projekte:
* **AGI-Posteingang**: Enthält die neu eingegangenen und noch nicht triagierten Tickets.
* **Konfiguration Geodaten:** Enthält die "für sich stehenden" Tagesgeschäfte mit Bezug zur Geodaten-Konfiguration.
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

|Nr|Frage|Antwort|Typ|Donedate|
|---:|---|---|---|---|
|1|Ab wann hat die Projekt-Verschachtelungstiefe einen negativen Einfluss auf die Performance?|Verschachtelungstiefe von 3 ist kein Problem. Bei tieferer Verschachtelung abhängig von der Anzahl der Issues|Tech|06.05.2020|
|2|Tickets in Version einer FE einem Abwicklungs-Projekt zuweisen? Ticket ist gleichzeitig in mehreren OPP relevant.|Ticket kann zu 0-1 Version zugewiesen werden (nicht n). --> Geeignete Konfig muss besprochen werden|Fach|-|  
|3|Tagesgeschäft in Vorhaben dem Layer-Rollout zuweisen?|Kein Problem. Layer-Rollout ist Version des Root-OPP "SOGIS" Der Version können Tickets aller Kind-OPP zugewiesen werden|Fach|06.05.2020|
|4|Mit Docker starten, um die Konfiguration hinzubekommen, und dann migrieren?|Kein Problem, solange von genau einer Quell-Instanz migriert wird|Tech|06.05.2020|
|5|Starten ohne das Laden der Beispielkonfiguration (demo data)|Kein Problem. Docker compose anpassen und anschliessend mittels Rails-Console Admin-Benutzer anlegen|Tech|06.05.2020|
|6|Auth: Anbinden mehrerer LDAP-Verzeichnisse|Ja, geht. In OP-Benutzerverzeichnis ist vermerkt, auf welchem LDAP der Benutzer definiert ist.|Tech|06.05.2020|
|7|Auth: Mischung von z.B. LDAP (interne Benutzer) mit "default Auth" für externe Benutzer|Ja, geht auch.|Tech|06.05.2020|
|8|Auth: Auto-Login mit bestehendem Cookie|Ja, geht. Verfall des Cookies kann sowohl absolut "X Stunden nach dem Login" wie "nach X Stunden Inaktivität" konfiguriert werden.|Tech|06.05.2020|
|9|Scoping bezüglich der Versionen verstehen "Gemeinsame Verwendung": Projektbaum, Projekthierarchie, ...|Unterprojekte: Nur nach unten. Projekthierarchie: Nach unten und oben. Projektbaum: Nach unten, oben und zur Seite (Geschwister) |Fach|14.05.2020|
|10|Konfiguration von Backlog verstehen|Erfordert die Auswahl der AP-Typen, welche als UserStory respektive als Task dargestellt werden|Fach|14.05.2020|
|11|Wieso kommen beim Rollout-Geschäft ungewünschte Status?|Weil mit dem Benutzer "admin" eingeloggt - dieser hat per Default alle Übergänge im Angebot. Mit Benutzer "Member" arbeiten|Fach|14.05.2020|
|12|Bleibt die Identität (URL) eines Tickets beim Verschieben zwischen Projekten stabil?|Ja und Nein. Die Nummer bleibt erhalten. Der "default-link" geht über das Projekt und ist damit nicht stabil. Der z.B. in den Suchresultaten angebotene Permalink ist stabil|Fach|14.05.2020|
|13|Erstellen von Backup aus "all in one" Image|Den folgenden Befehl ergänzen und ausführen:<br/>docker exec -e PGPASSWORD=openproject  -it $CONTAINER pg_dump -U openproject -d openproject -h localhost > dump.sql|Tech|14.05.2020|
|14|Projektübersicht. Rich Text Widget über ganzen Bildschirm?|?|Fach|-|
|15|Erben die Unterprojekte die Berechtigungen der Überprojekte?|?|Fach|-|
|16|Zusammenhang der Notifizierungseinstellungen und dem Mention (@Benutzer) bzgl. Email-Versand|?|Fach|-|
|17|Arbeitspackettypen Formularkonfiguration: Alles inkl. Gruppen ausräumen lässt sich nicht speichern..?|?|Fach|-|
|18|Bedeutung von "In Roadmap standartmässig angezeigt"..?|?|Fach|-|
|19|Abfragen der verstrichenen Zeit zwischen zwei Statusänderungen (WIP)|?|Fach|-|

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
