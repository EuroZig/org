// Beitragsordnung des EuroZig e.V. Kompilieren mit ../build.sh (setzt die
// Revision im Fußzeilen-Stempel) oder direkt mit:
//   typst compile --root .. --input rev=$(git rev-parse --short=8 HEAD) beitragsordnung.typ
//
// Die Beitragssätze stehen noch nicht fest. Sie sind im Text mit `tbd`
// markiert, damit im gesetzten PDF sichtbar bleibt, was die
// Mitgliederversammlung noch festlegen muss; jede dieser Stellen ist vor der
// Veröffentlichung zu ersetzen.
#import "../templates/bylaws.typ": bylaws-doc
#import "../templates/eurozig.typ": highlight, ink

#show: bylaws-doc.with(
  title: "Beitragsordnung",
  lang: "de",
)

#let tbd = text(fill: highlight, weight: 700, "[ … ]")

= § 1 Beitragspflicht

+ Jedes Mitglied ist zur Zahlung eines Jahresbeitrags verpflichtet.

+ Das Beitragsjahr entspricht dem Geschäftsjahr und damit dem Kalenderjahr.

+ Die Beitragspflicht beginnt mit dem Monat, in dem der Vorstand den Aufnahmeantrag annimmt, und endet mit dem Ende der Mitgliedschaft.

= § 2 Höhe der Beiträge

+ Der Jahresbeitrag beträgt:

  #table(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    // Nur waagerechte Linien: kräftig oben, unter der Kopfzeile und am Fuß,
    // fein zwischen den Beitragsgruppen.
    stroke: (x, y) => (
      top: if y == 0 { 0.6pt + ink } else { none },
      bottom: if y == 0 or y == 4 { 0.6pt + ink } else { 0.2pt + ink },
    ),
    inset: (x: 4pt, y: 7pt),
    table.header(
      text(weight: 700, "Mitgliedschaft"),
      text(weight: 700, "Beitrag pro Jahr"),
    ),
    [Ordentliche Mitglieder], tbd,
    [Ordentliche Mitglieder, ermäßigt], tbd,
    [Fördernde Mitglieder -- natürliche Personen (Mindestbeitrag)], tbd,
    [Fördernde Mitglieder -- juristische Personen (Mindestbeitrag)], tbd,
  )

+ Den ermäßigten Beitrag erhalten auf Antrag Schülerinnen und Schüler, Studierende, Auszubildende, Personen im Freiwilligendienst, Erwerbslose sowie Personen in vergleichbar eingeschränkten wirtschaftlichen Verhältnissen. Der Vorstand kann einen Nachweis verlangen. Die Ermäßigung gilt jeweils für das laufende Beitragsjahr; entfallen ihre Voraussetzungen, teilt das Mitglied dies dem Vorstand mit.

+ Mitglieder können jederzeit einen höheren als den Mindestbeitrag zusagen.

+ Alle Beträge verstehen sich in Euro.

= § 3 Fälligkeit

+ Der Beitrag ist im Voraus zu zahlen. Die Zahlungstermine ergeben sich aus der vom Mitglied nach § 4 gewählten Zahlungsweise.

+ Tritt ein Mitglied im Laufe eines Beitragsjahres bei, so ist für dieses Jahr ein Zwölftel des Jahresbeitrags für jeden angefangenen Monat der Mitgliedschaft zu zahlen.

+ Endet die Mitgliedschaft im Laufe eines Beitragsjahres, so werden bereits gezahlte Beiträge nicht erstattet.

= § 4 Zahlungsweise

+ Jedes Mitglied wählt mit dem Aufnahmeantrag

  + zwischen der Zahlung durch SEPA-Lastschrift und der Zahlung durch Überweisung sowie

  + zwischen jährlicher und vierteljährlicher Zahlung.

  Die Wahl kann in Textform geändert werden; die Änderung wirkt ab dem folgenden Beitragsjahr. Trifft ein Mitglied keine Wahl, so zahlt es jährlich durch SEPA-Lastschrift.

+ Bei jährlicher Zahlung ist der Jahresbeitrag zum 15. Januar des Beitragsjahres zu zahlen. Bei vierteljährlicher Zahlung ist er in vier gleichen Teilbeträgen jeweils zum 15. Januar, 15. April, 15. Juli und 15. Oktober zu zahlen. Fällt einer dieser Tage auf einen Samstag, Sonntag oder gesetzlichen Feiertag am Sitz des Vereins, so tritt der nächste Bankarbeitstag an seine Stelle.

+ Die Zahlung durch SEPA-Lastschrift setzt ein auf Euro lautendes Zahlungskonto voraus, das für SEPA-Basislastschriften erreichbar ist. Das Mitglied erteilt dem Verein hierzu ein SEPA-Lastschriftmandat (Einzugsermächtigung) in Textform. Der Einzug erfolgt zu den in Absatz 2 genannten Terminen. Bei einem Zahlungskonto außerhalb des Europäischen Wirtschaftsraums ist im Mandat zusätzlich die Anschrift des Mitglieds anzugeben.

+ Die Mandatsreferenz wird dem Mitglied mit der Aufnahmebestätigung mitgeteilt. Die Vorabankündigung (Pre-Notification) erfolgt einmalig für alle wiederkehrenden Einzüge mit der Aufnahmebestätigung, bei Änderungen von Betrag oder Termin erneut; die Ankündigungsfrist wird auf fünf Kalendertage vor dem Einzug verkürzt.

+ Die Zahlung durch Überweisung erfolgt auf das Konto des Vereins unter Angabe des Namens und der Mitgliedsnummer im Verwendungszweck. Der Betrag muss dem Verein spätestens am Fälligkeitstag gutgeschrieben sein.

+ Im Jahr des Beitritts ist der anteilige Beitrag nach § 3 Abs. 2 in einer Summe zu zahlen. Bei Zahlung durch Überweisung ist er 14 Tage nach der Annahme des Aufnahmeantrags fällig; bei Zahlung durch SEPA-Lastschrift wird er zum nächsten Termin nach Absatz 2 eingezogen.

+ Mitglieder mit einem Zahlungskonto außerhalb des SEPA-Raums zahlen abweichend von den Absätzen 1 bis 6 den Jahresbeitrag jährlich im Voraus über einen vom Vorstand benannten und auf der Website veröffentlichten Zahlungsdienstleister. Die Zahlung erfolgt in Euro; dem Verein muss der volle Beitrag gutgeschrieben werden. Entgelte des Zahlungsdienstleisters, Überweisungsentgelte fremder Institute und Kosten der Währungsumrechnung trägt das Mitglied.

+ Der Vorstand kann in begründeten Einzelfällen einen anderen Zahlungsweg zulassen.

= § 5 Mitteilungspflichten

Änderungen der Bankverbindung, der Anschrift und der E-Mail-Adresse sind dem Vorstand unverzüglich in Textform mitzuteilen. Kosten, die dem Verein durch eine unterbliebene Mitteilung entstehen, trägt das Mitglied.

= § 6 Zahlungsverzug und Rücklastschriften

+ Zahlt ein Mitglied den fälligen Beitrag nicht, so mahnt der Vorstand in Textform unter Setzung einer angemessenen Frist.

+ Entgelte, die dem Verein durch eine Rücklastschrift entstehen und die das Mitglied zu vertreten hat, insbesondere wegen mangelnder Kontodeckung oder eines Widerspruchs ohne berechtigten Grund, trägt das Mitglied.

+ Das Recht zum Ausschluss wegen Beitragsrückständen nach § 3 Abs. 6 lit. b der Satzung bleibt unberührt.

= § 7 Stundung und Erlass

Der Vorstand kann auf schriftlichen Antrag den Beitrag ganz oder teilweise stunden oder erlassen, wenn seine Zahlung für das Mitglied eine unbillige Härte bedeuten würde. Die Entscheidung gilt jeweils für ein Beitragsjahr.

= § 8 Inkrafttreten

Diese Beitragsordnung wurde von der Mitgliederversammlung am 13.09.2026 beschlossen und tritt am 13.09.2026 in Kraft.
