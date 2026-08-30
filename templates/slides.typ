// Shared template for EuroZig slide decks.
// Takes the design tokens of the A4 house style over to a 16:9 canvas: same
// logo block, same dotted rules, same type scale relations — only larger, and
// with the running header dropped on the opening slide.
//
// Usage:
//   #import "../templates/slides.typ": eurozig-slides, slide
//   #show: eurozig-slides.with(title: "EuroZig founding Meeting", lang: "en")
//   #slide(title: "Membership Fee Regulations")[ … ]
#import "eurozig.typ": dotted-rule, highlight, ink, kicker, logo, sans, serif

// One slide. `title` is typeset as the slide headline; omit it for a slide that
// carries its own layout. `item` prints the number of the agenda item the slide
// belongs to above the headline.
#let slide(title: none, item: none, body) = {
  pagebreak(weak: true)
  if title != none {
    if item != none {
      block(below: 0.5em, text(font: serif, size: 12pt, fill: highlight, "Agenda item " + str(item)))
    }
    block(below: 1.1em, text(font: sans, weight: 700, size: 26pt, title))
    dotted-rule()
    v(2mm)
  }
  body
}

#let eurozig-slides(
  title: none,
  subtitle: none,
  kicker-text: none,
  footer-note: "EuroZig e.V. · eurozig.eu",
  lang: "en",
  body,
) = {
  set page(
    paper: "presentation-16-9",
    margin: (left: 20mm, right: 20mm, top: 26mm, bottom: 18mm),
    header: {
      grid(
        columns: (auto, 1fr),
        align: (left + horizon, right + horizon),
        logo(height: 8mm),
        text(font: sans, size: 9pt, fill: highlight, weight: 500, "eurozig.eu"),
      )
    },
    header-ascent: 9mm,
    footer: {
      dotted-rule()
      v(1.5mm)
      grid(
        columns: (1fr, auto),
        text(font: sans, size: 8pt, fill: ink, footer-note),
        text(font: sans, size: 8pt, fill: ink, context counter(page).display("1")),
      )
    },
    footer-descent: 7mm,
  )

  set text(font: sans, size: 17pt, fill: ink, lang: lang, hyphenate: true)
  set par(leading: 0.65em, spacing: 1.1em)
  show link: set text(fill: highlight)
  set list(marker: text(fill: highlight, weight: 700, "—"), spacing: 0.9em)
  set enum(spacing: 0.9em)

  show heading.where(level: 2): it => block(
    above: 1.2em,
    below: 0.5em,
    text(font: serif, weight: 600, size: 18pt, it.body),
  )

  // Opening slide: no running header, no page number, headline centred on the
  // full canvas.
  page(header: none, footer: none, align(horizon + center, {
    logo(height: 16mm)
    v(6mm)
    if kicker-text != none {
      text(font: serif, size: 13pt, fill: ink, kicker-text)
      v(3mm)
    }
    if title != none {
      text(font: serif, weight: 600, size: 38pt, title)
    }
    if subtitle != none {
      v(4mm)
      text(font: sans, size: 15pt, fill: highlight, weight: 500, subtitle)
    }
  }))

  body
}
