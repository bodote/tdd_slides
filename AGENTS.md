# AGENTS.md

Hinweise für KI-Assistenten (Claude Code, Cursor, etc.) die in diesem Repo arbeiten.

## Projektstruktur

- `TDD_Why.md` — Marp-Präsentation Teil 1
- `TDD_Wiederentdecken-Missverständniss-Lösungen_2.md` — Marp-Präsentation Teil 2
- `assets/` — Bilder und andere Medien
- `slides/` — generierte PDF/PPTX-Ausgaben (nicht manuell bearbeiten)
- `scripts/create_pdf_pptx.sh` — Export-Script

## Präsentation starten

```bash
marp --server .
# dann http://localhost:8080/TDD_Why.md im Browser öffnen
```

`marp` muss global installiert sein: `npm install -g @marp-team/marp-cli`

## Format der Slides

Die `.md`-Dateien sind Marp-Markdown. Folien werden durch `---` getrennt.
HTML-Kommentare (`<!-- ... -->`) sind Moderationsnotizen (Speaker Notes), kein tatsächlicher Slide-Inhalt.

Frontmatter-Header (ganz oben) steuert Theme, Hintergrundbilder und Footer — nicht ohne Grund ändern.
