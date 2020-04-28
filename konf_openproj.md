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

## Fragen

|Frage|Antwort|
|---|---|
|Ab wann hat die Projekt-Verschachtelungstiefe einen negativen Einfluss auf die Performance?||
|Tickets in Rollout einer FE einem Projekt zuweisen?||  
|Tagesgeschäft in Vorhaben dem Layer-Rollout zuweisen?||
|Mit Docker starten, um die Konfiguration hinzubekommen, und dann migrieren?||
|Starten ohne das Laden der Beispielkonfiguration (demo data)||
|Auth: Anbinden mehrerer LDAP-Verzeichnisse||
|Auth: Mischung von z.B. LDAP (interne Benutzer) mit "default Auth" für externe Benutzer||
