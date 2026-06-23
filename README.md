# TDD Slides

Marp-basierte Präsentationen zu Test-Driven Development.

## Präsentationen

| Datei | Inhalt |
|---|---|
| `TDD_Why.md` | Teil 1: Warum TDD eine gute Idee ist |
| `TDD_Wiederentdecken-Missverständniss-Lösungen_2.md` | Teil 2: Missverständnisse und Lösungen |

## Voraussetzungen

```bash
npm install -g @marp-team/marp-cli
```

## Präsentation starten

```bash
# Live-Vorschau im Browser (mit Auto-Reload):
marp --server .
# dann http://localhost:8080/TDD_Why.md im Browser öffnen

# Presenter-Ansicht (mit Speaker Notes):
# Im Browser "P" drücken -> öffnet Presenter-Fenster mit Notizen und Folien-Vorschau
# Normalen Tab auf Beamer, Presenter-Fenster auf eigenem Bildschirm lassen
```

## Export

```bash
# PDF und PPTX erzeugen:
./scripts/create_pdf_pptx.sh TDD_Why
# Ausgabe landet in slides/
```
oder `marp --server .` starten , dann auf http://localhost:8080/ gehen und einfach wählen: 
![verzeichniss Screenshot](<marp_verzeichnis_screenshot.png>)

## VS Code

Offizielle Extension: **[Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)** (`marp-team.marp-vscode`)

```bash
code --install-extension marp-team.marp-vscode
```

Bietet Live-Preview, Export zu PDF/PPTX/HTML direkt aus VS Code, und Speaker Notes im Preview.
Preview öffnen: `Cmd+Shift+V` oder `Cmd+Shift+P` → "Marp: Open Preview to the Side"
