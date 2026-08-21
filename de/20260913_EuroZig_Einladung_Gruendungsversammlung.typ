// Einladung zur Gründungsversammlung des Vereins EuroZig. Wird auf der Website
// veröffentlicht, hat also keinen Empfänger. Kompilieren mit ../build.sh (setzt die
// Revision im Fußzeilen-Stempel) oder direkt mit:
//   typst compile --root .. 20260913_EuroZig_Einladung_Gruendungsversammlung.typ
#import "../templates/eurozig.typ": eurozig-a4

#show: eurozig-a4.with(
  kicker-text: "Sonntag, 13. September 2026 · München",
  title: "Einladung zur Gründungsversammlung",
  footer-note: "EuroZig e.V. (in Gründung) · eurozig.eu",
  lang: "de",
)

// Adressen und Links nie am Zeilenende trennen.
#show link: it => box(text(hyphenate: false, it))

Wir gründen einen gemeinnützigen Verein mit dem Namen EuroZig. Zur Gründungsversammlung
laden wir alle herzlich ein, die ihn mitgestalten möchten. Wer teilnimmt und die Satzung
unterzeichnet, wird Gründungsmitglied und stimmt über alle Beschlüsse dieses Tages mit ab.

#block(spacing: 1.4em)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.5em,
    text(weight: 700, "Termin:"), [Sonntag, 13. September 2026, 10:15 Uhr (Einlass ab 10:00 Uhr)],
    text(weight: 700, "Ort:"), [Perchtinger Straße 8--10, 81379 München],
  )
]

= Tagesordnung

Vor Eintritt in die Tagesordnung:

- Eröffnung der Versammlung und Begrüßung
- Feststellung der Anwesenheit und Eintragung in die Anwesenheitsliste
- Wahl der Versammlungsleitung und der Protokollführung
- Bekanntgabe und Feststellung der Tagesordnung

Anschließend folgt die Tagesordnung:

+ *Beratung und Feststellung der Vereinssatzung*
  - Vorstellung des Satzungsentwurfs und Aussprache
  - Beschluss über die Gründung des Vereins und über die Satzung
  - Unterzeichnung der Satzung durch die Gründungsmitglieder

+ *Wahl der drei Vorstandsmitglieder und des Kassenprüfers*
  - Wahl der drei Vorstandsmitglieder (§ 6 Abs. 1 der Satzung)
  - Wahl des Kassenprüfers (§ 5 Abs. 4 der Satzung)
  - Konstituierung des Vorstands: Wahl von Vorsitz, zweitem Vorsitz und
    Schatzmeister aus seiner Mitte (§ 6 Abs. 2 der Satzung)

+ *Festsetzung der Mitgliedsbeiträge und Erlass der Beitragsordnung*
  - Vorstellung der vorgeschlagenen Jahresbeiträge, Aussprache und Beschluss über
    Beiträge und Beitragsordnung (§ 5 Abs. 5 der Satzung)

+ *Erlass der Vergütungsordnung*
  - Vorstellung, Aussprache und Beschluss über die Vergütungsordnung
    (§ 5 Abs. 6 der Satzung)

+ *Organisationsfragen*
  - Ermächtigung des Vorstands zu Satzungsänderungen, die Vereinsregister oder
    Finanzamt für Eintragung und Gemeinnützigkeit verlangen
  - Anmeldung zum Vereinsregister und Antrag auf Anerkennung der Gemeinnützigkeit
  - Einrichtung des Vereinskontos und weitere organisatorische Fragen

+ *Sonstiges* -- Aussprache über die künftige Ausrichtung und Tätigkeit des Vereins,
  danach Schließung der Versammlung

Die Entwürfe von Satzung, Beitragsordnung und Vergütungsordnung stehen unter
#link("https://eurozig.eu/bylaws")[eurozig.eu/bylaws] und auf
#link("https://github.com/EuroZig/org")[GitHub] bereit. Änderungsvorschläge reichen Sie
gerne als Pull Request ein.

Wir freuen uns auf Ihr Kommen.

Die Gründungsinitiative EuroZig
