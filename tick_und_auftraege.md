# Tagesgeschäft und Aufträge

## Tagesgeschäft

![Tagesgeschäft](puml_output/flow_ticket.png)

### SOLL-Durchlaufzeiten

Bemerkung: Ein Tagesgeschäft kann auch eine sehr grosse Durchlaufzeit haben, wenn dieses Beispielsweise
eine Codeänderung (Software-Entwicklung) auslöst. Darum sind folgend nur die Durchlaufzeiten für
Tickets aufgeführt, welche keinem Rollout zugewiesen sind.

## Rollout-Ticket

![Rollout-Ticket](puml_output/flow_rollout.png)

## Auftrag

![Auftrag](puml_output/flow_ablaeufe.png)

### Punktuelle Erläuterungen
 
"WIE-Erarbeitung organisieren" umfasst:
* Das "WAS" verstehen
* Sicherstellen, dass Ticket vollständig ist
* Überlegen, wer zeitnah das "WIE" erarbeiten kann

"WIE-Teil erarbeiten" umfasst:
* **Möglichst einfache Lösung finden**
    * Gutes Verständnis des "WAS" erlangen. Nur so können geeignete Varianten formuliert werden.
    * Lösungsvarianten sammeln.
    * Mit GIS-Koordinator verhandeln (lassen), falls eine Anforderung eine einfache Lösung "gefühlt" verhindert.
* Gewählte Variante im Sinne der resultierenden Arbeiten strukturieren.
* "Admin-Arbeiten" identifizieren und mittels "Kind-Tagesgeschäft" mit Betrieb besprechen.

### Soll-Durchlaufzeiten
|Status von bis|Durchlaufzeit [at]|Bemerkungen|
|---|---|---|
|idee - umsetzbar|5||
|umsetzbar - umsetzung|1 - 20|"Wartezeit". Ist stark abhängig von AGI-Auslastung|
|umsetzung - abgeschlossen|7||

**Wichtig:** Bei hoher Auslastung ruht der Auftrag im Status "umsetzbar"
   

