// DIN 5008 (Form B) letter in the EuroZig style.
// Derived from eurozig.typ (which is extracted from the website theme).
//
// Geometry follows DIN 5008 Form B ("tiefgestelltes Anschriftfeld"):
//   - return-address line at 45 mm from the top edge
//   - address field 85 mm x 40 mm starting at 50 mm
//   - information block from 125 mm off the left edge
//   - body text starts at 98.5 mm
//   - fold marks at 105 mm / 210 mm, punch mark at 148.5 mm
//
// Usage:
//   #import "din-5008-letter.typ": din-5008-letter, closing
//   #show: din-5008-letter.with(
//     recipient: [Erika Musterfrau \ Musterweg 2 \ 12345 Musterstadt],
//     date: "20.07.2026",
//     subject: [Einladung zur Gründungsversammlung],
//   )
//   Sehr geehrte Frau Musterfrau, ...
//   #closing(name: "David Sugar", role: "Vorsitzender")

#import "eurozig.typ": highlight, ink, gray, sans, serif, dotted-rule, logo

#let _top-margin = 20mm
#let _left-margin = 25mm

#let din-5008-letter(
  sender: (
    name: "EuroZig e.V.",
    street: "Leonhardstraße 20A",
    city: "90443 Nürnberg",
  ),
  recipient: [],
  // Extra postal remarks above the address (e.g. "Einschreiben").
  postal-remarks: none,
  info: none, // content for the information block; defaults to sender contact
  contact-email: "hello@eurozig.eu",
  date: none,
  subject: none,
  folding-marks: true,
  footer-note: none, // small print at the bottom; defaults from sender
  lang: "de",
  body,
) = {
  let sender-line = (sender.name, sender.street, sender.city).join(" · ")
  let default-info = {
    set par(spacing: 0.4em)
    text(weight: 700, sender.name)
    linebreak()
    sender.street
    linebreak()
    sender.city
    v(2mm)
    link("mailto:" + contact-email, contact-email)
    linebreak()
    link("https://eurozig.eu")[eurozig.eu]
    if date != none {
      v(2mm)
      date
    }
  }
  let default-footer = (
    sender.name,
    sender.street + ", " + sender.city,
    "eurozig.eu",
  ).join(" · ")

  set page(
    paper: "a4",
    margin: (left: _left-margin, right: 20mm, top: _top-margin, bottom: 25mm),
    background: context if folding-marks and counter(page).get().first() == 1 {
      let mark(y, len) = place(
        top + left,
        dx: 4mm,
        dy: y,
        line(length: len, stroke: 0.5pt + ink),
      )
      mark(105mm, 4mm) // fold mark 1
      mark(148.5mm, 7mm) // punch mark
      mark(210mm, 4mm) // fold mark 2
    },
    footer: {
      dotted-rule()
      v(1.5mm)
      grid(
        columns: (1fr, auto),
        text(font: sans, size: 7.5pt, fill: ink,
          if footer-note != none { footer-note } else { default-footer }),
        text(font: sans, size: 7.5pt, fill: ink,
          context {
            let total = counter(page).final().first()
            if total > 1 [ #counter(page).display("1") / #total ]
          }),
      )
    },
    footer-descent: 8mm,
  )

  set text(font: sans, size: 11pt, fill: ink, lang: lang)
  set par(leading: 0.65em, spacing: 1em)
  show link: set text(fill: highlight)

  // ---------- letterhead (first page, placed absolutely) ----------

  // Logo in the Briefkopf area (0–45 mm).
  place(top + left, dy: 10mm - _top-margin, logo(height: 12mm))
  place(top + right, dy: 10mm - _top-margin,
    text(font: sans, size: 9pt, fill: highlight, weight: 500, "eurozig.eu"))

  // Return-address line at 45 mm (Rücksendeangabe).
  place(top + left, dy: 45mm - _top-margin,
    box(width: 85mm, text(font: sans, size: 7pt, underline(sender-line))))

  // Address field: 85 mm x 40 mm at 50 mm.
  place(top + left, dy: 50mm - _top-margin,
    box(width: 85mm, height: 40mm, {
      set par(leading: 0.5em)
      if postal-remarks != none {
        text(size: 9pt, postal-remarks)
        linebreak()
      }
      recipient
    }))

  // Information block: from 125 mm off the left paper edge.
  place(top + left, dx: 125mm - _left-margin, dy: 50mm - _top-margin,
    box(width: 210mm - 125mm - 20mm, {
      set text(size: 9pt)
      if info != none { info } else { default-info }
    }))

  // ---------- letter body ----------

  // Body text begins at 98.5 mm from the top edge.
  v(98.5mm - _top-margin)

  if subject != none {
    block(below: 2em, text(weight: 700, subject))
  }

  body
}

// Closing with space for a handwritten signature.
#let closing(
  greeting: "Mit freundlichen Grüßen",
  name: none,
  role: none,
  signature-space: 14mm,
) = {
  v(1em)
  greeting
  v(signature-space)
  if name != none { name }
  if role != none {
    linebreak()
    text(size: 9pt, role)
  }
}
