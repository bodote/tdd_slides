---
marp: true
theme: default
paginate: true
auto-scaling: true
style: |
  section {
    font-family: 'Slabo 27px';
    background-color: #ffffff;
  }
backgroundImage: url(../tdd/assets/images/BRANDAD_Logo.png)
backgroundSize: 150px
backgroundPosition: top 20px right 20px
footer: '  🔗https://www.linkedin.com/in/ansgar-simon-a60906141/ 🔗https://bodote.github.io'
transition: drop
---

Eine wichtige Einschränkung

## Kein Tool entwirft von allein eine bewusste Architektur — und prüft ihre Einhaltung automatisch.

SDD-Tools steuern den Prozess. Den Architektur-Stil und die deterministische Architektur-Prüfung liefern sie unaufgefordert nicht mit.

---

## Die Lücke im Detail

**Architektur-Stil**

Ein Backend bekommt meist eine simple Layered-Struktur (Controller → Service → Repository) — der Default-Prior der LLMs. Hexagonal / Ports & Adapters wählt ein Agent nur mit Signalen wie DDD oder „Domäne isolieren". Unaufgefordert: unwahrscheinlich.

**Architektur-Tests**

Deterministische Fitness-Functions (ArchUnit & Co.) werden praktisch nie automatisch erzeugt. Die QA-Schritte der Tools zielen auf funktionale Tests — nicht auf Architektur-Konformität.

---

## Warum deterministische Prüfung zählt

**Architektur-Drift**

Eine einmal definierte Architektur erodiert über die Zeit. Jede unbemerkte Abkürzung verfestigt sich — bis Änderungen teuer und riskant werden.

**AI beschleunigt den Verfall**

Coding-Agents erzeugen Code in Minuten. Ohne automatische Schranke vervielfacht sich mit der Geschwindigkeit auch der schleichende Strukturverfall.

**Review skaliert nicht**

Manuelle Reviews übersehen Schichtverletzungen zuverlässig. Ein Test, der bei jedem Build prüft „Domain darf nicht auf Infrastructure zeigen", tut das nie.

---

## Wie die 9 Tools abschneiden

**Am nächsten dran**

BMAD: Der Architect-Agent erzwingt ein Architektur-Dokument samt ADRs. Aber der Stil ist Layered by default, und ArchUnit-Tests entstehen nicht automatisch.

**Nur mit Konfiguration**

Spec Kit (Constitution), Kiro (Steering + Hooks) und Tessl (Methodology-Tile) können beides — aber erst, wenn du es einmalig vorgibst.

**Nicht von sich aus**

GSD, Claude Code, Cursor, Augment Code und OpenSpec entwerfen oder erzwingen einen Architektur-Stil nicht eigenständig.

---

## Der Hebel: Architektur als Regel verankern

**Einmal global definieren**

Die Architektur-Vorgabe einmal projektweit hinterlegen — in der Constitution (Spec Kit), Steering (Kiro), einem custom Architect-Agent (BMAD), einer Tessl-Tile, in CLAUDE.md oder .cursor/rules. Dann gilt sie für jedes Feature, in jeder Session.

**Deterministisch erzwingen**

Fitness-Functions je Sprache als Pflicht-Tests im CI: ArchUnit (Java), ArchUnitNET / NetArchTest (.NET), dependency-cruiser / ts-arch (TypeScript), import-linter / PyTestArch (Python). Verletzung = roter Build.

---

## Was Unternehmen berichten

**HumanLayer**

„Context Engineering" als eigene Disziplin. Code-Qualität proportional zur Spec-Qualität — Spec-Writing wird zur Sprint-Aufgabe.

**Red Hat**

„Spec Coding" zielt auf 95 %+ AI-Code-Accuracy. Strikte Trennung von Was (Mensch) und Wie (AI) steigert auch die Review-Effizienz.

**Enterprise-Trend**

Von Shopify bis EPAM: AI-Nutzung wird Baseline — die Qualität entscheidet sich an der Spezifikation.

---

## Das breitere Ökosystem

**Statischer Kontext**

AGENTS.md (Linux Foundation), CLAUDE.md und Cursor Rules liefern projektweite Standards, Architekturprinzipien und Tool-Konfiguration.

**Dynamischer Kontext**

SDD definiert den feature-spezifischen Kontext. AWS Kiro kombiniert beides plus „Steering Hooks", die bei jedem Save die Spec-Compliance prüfen.

---

## Kritische Einordnung

**Nicht Wasserfall**

Specs sind leichtgewichtig und iterativ, der Feedback-Loop dauert Minuten statt Monate, Specs co-evolvieren mit dem Code.

**Nicht für alles**

Für kleine Scripts und Prototypen bleibt Vibe Coding effizienter. SDD lohnt ab einer gewissen Komplexität und im Team.

**Junges Ökosystem**

Spec Kit, OpenSpec, Kiro & Co. sind unkonsolidiert. Standards fehlen — die Konsolidierung steht noch aus.

---

Fazit & Ausblick

## Klein anfangen: ein bestehendes Feature spezifizieren und den AI-Output mit und ohne Spec vergleichen.

Die Richtung ist klar — AI-gestützte Spec-Generierung, Echtzeit-Compliance und automatische Spec-Updates kommen. Open Source, geringes Risiko, überraschender Unterschied.

---

## Quellen

* Spec Driven Development: Warum die Zukunft der AI-gestützten Softwareentwicklung mit der Spezifikation beginnt — JAVAPRO
  javapro.io/de/spec-driven-development-warum-die-zukunft-der-ai-gestuetzten-softwareentwicklung-mit-der-spezifikation-beginnt

* 9 Best AI Tools for Spec-Driven Development in 2026: Kiro, BMAD, GSD and More — MarkTechPost
  marktechpost.com/2026/05/08/9-best-ai-tools-for-spec-driven-development-in-2026-kiro-bmad-gsd-and-more-compare
