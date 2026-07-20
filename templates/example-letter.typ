// Example for the DIN 5008 letter template. Compile with:
//   typst compile example-letter.typ
#import "din-5008-letter.typ": din-5008-letter, closing

#show: din-5008-letter.with(
  recipient: [
    Erika Musterfrau \
    Musterweg 2 \
    12345 Musterstadt
  ],
  date: "20.07.2026",
  subject: [Einladung zur Gründungsversammlung des EuroZig e.V.],
)

Sehr geehrte Frau Musterfrau,

hiermit laden wir Sie herzlich zur Gründungsversammlung des EuroZig e.V. ein.
Die Versammlung findet am Sonntag, den 13. September 2026 um 10:00 Uhr in
München statt.

Auf der Tagesordnung stehen die Verabschiedung der Satzung, die Wahl des
Vorstands sowie die Festlegung der Mitgliedsbeiträge.

Wir freuen uns auf Ihr Kommen.

#closing(name: "David Sugar", role: "Vorsitzender")
