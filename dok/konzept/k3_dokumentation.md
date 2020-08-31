# "Leserprofile" und Inhalte

Zwecks Erstellung leserfreundlicher und vollständiger Dokumentation muss jeweils bekannt sein, für welche Leserprofile
welche Kapitel geschrieben wurden, und wo einem Leserprofil zur Orientierung innerhalb der Dokumentation geholfen werden muss.

## Leserprofile der Dokumentation

* **Endbenutzer:** Nutzt die grafische Oberfläche der Komponente. Kapitel entspricht dem "Benutzerhandbuch".
Hat kein Interesse an den technischen Zusammenhängen.
* **Starter:** Will auf die Schnelle verstehen, wie die Komponente isoliert oder "im Verbund" gestartet und ausprobiert werden kann.
* **GDI-Betrieb:** Will verstehen / dokumentieren, wie und wo die Komponente in der GDI konkret "installiert" ist.
* **Entwickler:** Will wichtige Informationen zur grundsätzlichen internen Strukturierung verstehen 
(In gröberem Masstab als die im Sourcecode enthaltene Klassen- / Methodendokumentation).

## Kapitel der Dokumentation

* **Benutzung:** Erläutert dem Endbenutzer, wie die Komponente genutzt wird (GUI, bei Api wie die API-Aufrufe aussehen)
  * GUI: Wie die Masken des GUI zu bedienen sind. Am Besten ist ein selbsterklärendes GUI oder die Einbindung von Kontexthilfe direkt in die Applikation.
  * API: Erläuterung der Signatur des API (Aufrufparameter, Struktur der API-Antwort)
  * Kommandozeilen-Tool: Wie in der Shell ausführen? Welches sind dafür die minimal zu übergebenden Parameter? Für die Kommandozeilen-Tools macht meist das
  Zusammenlagen der Kapitel "Benutzung" und "Konfigurieren und starten" in das Kapitel "Benutzung" sinn.
* **Konfigurieren und starten:** Beschreibt, wie die Komponente konfiguriert und gestartet werden kann. 
Die äusseren Abhängigkeiten sind meist zwingender Teil der Konfiguration.
* **Externe Abhängigkeiten:** Beschreibt, welche externen Abhängigkeiten für die Komponente bestehen. Ab 2-3 externen Abhängigkeiten mittels Komponentendiagramm dokumentieren.
* **Konfiguration und Betrieb in der GDI:** Beschreibt, wo die Komponente wie in der GDI in Betrieb ist.
* **Interne Struktur:** Beschreibt den grundsätzlichen internen Aufbau der Komponente zwecks Verständnis für die Weiterentwicklung.
  * Interne Abhängigkeiten: Beschreibt, wo und wie die Abhängigkeiten auf packetierte externe Bibliotheken definiert ist.
  
## Matrix Leserprofile / Kapitel

Zeigt, welche Leserprofile primär an welchen Kapiteln interessiert sind.

|Profile >|Endbenutzer|Starter|GDI-Betrieb|Entwickler|
|---|---|---|---|---|
|**Kapitel:**| | | | |
|Benutzung|x| | | |
|Konfigurieren und starten| |x|x|x|
|Externe Abhängigkeiten| |x|x|x|
|Konfiguration und Betrieb in der GDI| | |x| |
|Interne Struktur| | | |x|
    


