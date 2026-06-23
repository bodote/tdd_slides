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
backgroundImage: url(../../assets/images/BRANDAD_Logo.png)
backgroundSize: 150px
backgroundPosition: top 20px right 20px
footer: '  🔗https://www.linkedin.com/in/ansgar-simon-a60906141/ 🔗https://bodote.github.io'
transition: drop
---

# Spec Driven Development

Warum die Zukunft der AI-gestützten Softwareentwicklung mit der Spezifikation beginnt

---

## Das Versprechen und die Ernüchterung

**Vibe Coding (Karpathy, 2025)**

Einfach drauflos prompten, der AI beim Programmieren zusehen. Prototypen in Tagen statt Wochen — die Euphorie war groß.

**Die Realität**

AI vervierfacht das Tempo, verzehnfacht aber die Sicherheitsrisiken. 80 % der Entwickler umgehen Security-Policies, nur 10 % scannen den AI-Code.

---

<!-- Infografik: Wurzel des Problems -->

![bg 75%](wurzel-kontext-ist-king.png)

---

Was ist Spec Driven Development?

## Die Spezifikation kommt zuerst — als Vertrag zwischen menschlicher Intention und AI-Implementierung.

Eine präzise, maschinenlesbare „Single Source of Truth". Thoughtworks führt SDD im Technology Radar Vol. 32 als empfohlene Technik.

---

## Der SDD-Workflow in vier Phasen

**Specify → Plan → Tasks → Implement**

**Requirements (Given/When/Then) → technischer Plan → atomare Tasks → erst dann generiert die AI Code — mit vollem Kontext über das Was, Warum und die Rahmenbedingungen.**

---

## Die führenden Frameworks (1..3/9)

| Tool | Ansatz | Stärke | Ideal für |
|------|--------|--------|-----------|
| **GitHub Spec Kit** | CLI, 4 Phasen + Constitution | Breiteste Adoption, portabel | Einstieg, bestehende IDE |
| **Fission-AI OpenSpec** | Proposal-zentriert, Delta-Marker | Auditierbares Change-Mgmt | Brownfield & Iteration |
| **BMAD-METHOD** | 12+ Agenten, voller SDLC | Rollengetrennte Multi-Agenten | Komplexe Planung |

---

## Die führenden Frameworks (3..6/9)

| Tool | Ansatz | Stärke | Ideal für |
|------|--------|--------|-----------|
| **AWS Kiro** | Agentic IDE, 3 Phasen, EARS | Agent-Hooks, Auto-Router | Formale Specs, vertraute IDE |
| **Augment Code** | Context-Layer (kein Spec-Autor) | Kontext über Multi-Service-Repos | Große Brownfield-Enterprise |
| **Tessl** | Spec-as-source, Tiles + Registry | Schutz vor API-Halluzination | Langlebige Specs |

---

## Die führenden Frameworks (6..9/9)

| Tool | Ansatz | Stärke | Ideal für |
|------|--------|--------|-----------|
| **Claude Code** | CLI, CLAUDE.md als Spec-Layer | Ausführungs-Agent für SDD-Tools | Autonome Implementierung |
| **Cursor** | Plan Mode + Project Rules | Spec-first ohne Toolwechsel | Mittelweg, vertraute IDE |
| 🟢 **GSD** | Meta-Prompting, Claude Code | Parallele Agenten, 200K Kontext | Lean-Alternative zu BMAD |

---

## GitHub Spec Kit

| | |
|---|---|
| **Ansatz** | Open-Source-CLI, Checkpoints: Specify → Plan → Tasks → Implement |
| **Agenten** | 30+ (Claude Code, Copilot, Amazon Q, Gemini CLI) |
| **Reife** | 93.000+ Stars, v0.8.7 (07.05.2026) |
| **Architektur** | „Constitution" (Markdown) als persistenter Vertrag über alle Sessions |
| **Ideal für** | SDD-Einstieg, portabel, bestehende IDE bleibt |

<!-- 
Detailnotizen:
- die am breitesten adoptierte Open-Source-Option für SDD
- Constitution hält unveränderliche Grundprinzipien fest — der persistente Vertrag zwischen Entwickler und Agent
- Default-Einstieg für SDD-Neulinge und die portabelste Option, wenn die bestehende IDE bleiben soll
-->

---

## Fission-AI OpenSpec

| | |
|---|---|
| **Ansatz** | Proposal-zentriert, Delta-Marker (ADDED/MODIFIED/REMOVED) |
| **Charakter** | Leichtgewichtig, keine harten Approval-Gates |
| **Stärke** | Auditierbares Change-Management, Eval-Gesamtsieger (02/2026) |
| **Schwäche** | Proposals können bei langer Umsetzung driften |
| **Ideal für** | Brownfield & Iteration, wenn Doku-Trail Priorität hat |

<!-- 
Detailnotizen:
- relativ zur bestehenden Funktionalität statt Greenfield-Beschreibung
- laut eigener Doku leichtgewichtig & flexibel: liefert Struktur, ohne harte Approval-Gates zwischen den Phasen zu erzwingen
- unabhängige Eval: 13 Kategorien, Python-Backend — Gesamtsieger
- für große Multi-Service-Vorhaben mit Living-Spec-Plattform kombinieren
-->

---

## BMAD-METHOD

| | |
|---|---|
| **Ansatz** | 12+ spezialisierte Agenten über den gesamten SDLC mit dateibasierten Handoffs |
| **Reife** | MIT, v6.6.0 (29.04.2026), 46.700+ Stars, 5.500+ Forks, kostenlos |
| **Architektur** | 3 Schichten: BMad Core, Method, Builder — läuft auf Claude Code, Cursor, Codex |
| **Ideal für** | Rollengetrennte Multi-Agenten-Workflows ohne Vendor-Lock-in |

<!-- 
Detailnotizen:
- „Build More Architect Dreams"
- Rollen: PM, Architektur, UX, Dev, QA, Scrum Master
- „Cross Platform Agent Team" läuft ohne Umbau auf Claude Code, Cursor, Codex u. a.
- Komplett kostenlos, kein Paywall
-->

---

## AWS Kiro

| | |
|---|---|
| **Ansatz** | Agentic IDE, 3 Phasen: Requirements → Design → Tasks (EARS-Notation) |
| **Automatisierung** | Agent-Hooks bei Save/Create: Tests, README, Security-Scans |
| **Technik** | Code OSS, CLI + Web, Auto-Router (Sonnet, Qwen, DeepSeek …), kein AWS-Konto nötig |
| **Ideal für** | Formale Spec-Workflows in vertrauter IDE-Umgebung |

<!-- 
Detailnotizen:
- Ausgabe: requirements.md, design.md, tasks.md
- Auto-Router wählt pro Task aus Claude Sonnet, Qwen, DeepSeek, GLM, MiniMax
- Agent-Hooks übernehmen Test-Updates, README-Refreshes und Security-Scans ohne manuelles Prompten
-->

---

## Tessl

| | |
|---|---|
| **Ansatz** | „Tiles" im .tessl/-Verzeichnis lehren jeden MCP-Agenten den Spec-Workflow |
| **Architektur** | Specs im Code als Langzeitgedächtnis, 2 Schichten: Prozess- + Library-Kontext |
| **Differenzierer** | Spec Registry: 10.000+ Specs für externe Libraries („npm für Spezifikationen") |
| **Ideal für** | Prozess-Chaos UND API-Halluzination gleichzeitig verhindern |

<!-- 
Detailnotizen:
- language-agnostic Agent-Enablement
- Workflow: fragen → Spec schreiben → Freigabe → implementieren
- Specs als Audit-Trail und für kohärente Weiterentwicklung
- Registry schützt vor API-Halluzinationen
-->

---

## Augment Code

| | |
|---|---|
| **Ansatz** | Kontext-Layer, kein Spec-Authoring — Context Engine über 400.000+ Dateien |
| **Stärke** | Schließt Cross-Repository-Kontextlücke in großen Brownfields |
| **Kennzahlen** | 70,6 % SWE-bench, 59 % F-Score (Hersteller-Angaben) |
| **Agenten** | BYOA: Claude Code, Codex, OpenCode oder nativer Auggie |
| **Ideal für** | Enterprise Multi-Service — wo Kontext-Drift das Hauptproblem ist |

<!-- 
Detailnotizen:
- persistentes Architekturverständnis über 400.000+ Dateien
- Kennzahlen sind Hersteller-Angaben — entsprechend einordnen
- authort selbst keine Specs
-->

---

## Claude Code

| | |
|---|---|
| **Ansatz** | Agentisches CLI für vollautonome Entwicklung ohne ständiges Prompten |
| **Spec-Layer** | CLAUDE.md erzwingt persistenten Kontext, Standards und Constraints — de facto SDD |
| **Stärke** | Große Specs in einer kohärenten Session verarbeiten und implementieren |
| **Rolle** | Ausführungs-Agent für BMAD, GSD und GitHub Spec Kit |

<!-- 
Detailnotizen:
- planen, mehrstufige Workflows orchestrieren und nachfragen
- CLAUDE.md-Dateien über jede Session hinweg
- häufig unterstützter Ausführungs-Agent quer über BMAD, GSD und GitHub Spec Kit
-->

---

## Cursor — Plan Mode + Project Rules

| | |
|---|---|
| **Ansatz** | Plan Mode: reviewbarer Plan vor Code (Fragen, Dateien, Freigabe) |
| **Spec-Kontext** | Project Rules unter .cursor/rules/ — persistenter, portabler Kontext |
| **Schwäche** | Kein nativer Spec-Lifecycle, keine Drift-Detection oder Living-Spec-Sync |
| **Ideal für** | Strukturierte AI-Entwicklung ohne vollen SDD-Overhead — solider Mittelweg |

<!-- 
Detailnotizen:
- verhindert verfrühte Code-Generierung
- das alte .cursorrules gilt als Legacy
- Spec-Support ist nicht in der Architektur verankert
-->

---

## 🟢 GSD — Get Shit Done

| | |
|---|---|
| **Ansatz** | Meta-Prompting / Context-Engineering, lean Alternative zu BMAD |
| **Reife** | 61.000+ Stars seit Dez 2025 (0→61K in 5 Monaten), via npx, model-agnostisch |
| **Technik** | Parallele Researcher, Planner, Executors, Verifiers — je bis zu 200K Kontext |
| **Ideal für** | Kontext-Rotation, Quality-Gates, Planungs-State über Sessions |

<!-- 
Detailnotizen:
- primär für Claude Code & kompatible Agenten
- auch OpenRouter und lokale Modelle
- „Komplexität gehört ins System, nicht in den Workflow."
- füllt Lücken von Claude Code: Kontext-Rotation, Quality-Gates, Planungs-State über Sessions
-->

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
