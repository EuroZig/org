// EuroZig design tokens and A4 document template.

// ---------- design tokens ----------

#let highlight = rgb("003399") // --highlight
#let ink = rgb("1f1f1f") // --ink
#let gray = rgb("f0f0f0") // --gray

// The brand faces ship with macOS and cannot be installed on Linux CI, so
// `--input fonts=libre` selects stand-ins: Liberation Sans is metric-compatible
// with Arial, and Roboto Slab is the slab serif the website CSS already falls
// back to. build.sh picks the right set per platform, which keeps Typst from
// warning about families that are absent on the machine doing the build.
#let _libre = sys.inputs.at("fonts", default: "") == "libre"

#let sans = if _libre { ("Liberation Sans",) } else { ("Helvetica Neue", "Arial") }
#let serif = if _libre { ("Roboto Slab",) } else { ("Rockwell", "Georgia") }

// ---------- brand elements ----------

// The dotted rules drawn between sections on the website.
#let dotted-rule(width: 100%) = line(
  length: width,
  stroke: (paint: ink, thickness: 1.3pt, dash: "loosely-dotted", cap: "round"),
)

// The blue logo block from the site header.
#let logo(height: 12mm) = box(
  fill: highlight,
  height: height,
  inset: (x: 0.30 * height),
  align(horizon, text(
    font: sans,
    fill: white,
    weight: 700,
    size: 0.46 * height,
    tracking: -0.4pt,
    "EuroZig",
  )),
)

// Small serif line above a headline ("Hello World!" on the site).
#let kicker(body) = text(font: serif, size: 10pt, fill: ink, body)

// The pill shape of the site's donate button, for badges/highlights.
#let pill(body, fill: highlight, text-fill: white) = box(
  fill: fill,
  radius: 20pt,
  inset: (x: 10pt, y: 5.5pt),
  text(font: sans, fill: text-fill, weight: 700, size: 9.5pt, body),
)

// ---------- A4 document template ----------

// General-purpose A4 document in the website's style.
//
// Usage:
//   #import "eurozig.typ": eurozig-a4
//   #show: eurozig-a4.with(
//     kicker-text: "Hello World!",
//     title: "Announcing EuroZig!",
//   )
#let eurozig-a4(
  title: none,
  kicker-text: none,
  footer-note: "EuroZig e.V. · eurozig.eu",
  lang: "en",
  body,
) = {
  set page(
    paper: "a4",
    margin: (left: 22mm, right: 22mm, top: 36mm, bottom: 28mm),
    header: {
      grid(
        columns: (auto, 1fr),
        align: (left + horizon, right + horizon),
        logo(height: 11mm),
        text(font: sans, size: 9pt, fill: highlight, weight: 500, "eurozig.eu"),
      )
      v(2.5mm)
      dotted-rule()
    },
    header-ascent: 8mm,
    footer: {
      dotted-rule()
      v(2mm)
      grid(
        columns: (1fr, auto),
        text(font: sans, size: 8pt, fill: ink, footer-note),
        text(font: sans, size: 8pt, fill: ink, context counter(page).display("1")),
      )
    },
    footer-descent: 8mm,
  )

  // Explicit `true` rather than the default `auto`, which would only hyphenate
  // justified text. Patterns are chosen by `lang`.
  set text(font: sans, size: 10.5pt, fill: ink, lang: lang, hyphenate: true)
  set par(leading: 0.6em, spacing: 1em)
  show link: set text(fill: highlight)

  // Section headings, like "our mission →" on the homepage.
  show heading.where(level: 1): it => block(
    above: 1.6em,
    below: 0.8em,
    text(font: sans, weight: 700, size: 14pt, it.body),
  )
  // Card-headline style subheadings (condensed serif on the site).
  show heading.where(level: 2): it => block(
    above: 1.3em,
    below: 0.6em,
    text(font: serif, weight: 600, size: 12.5pt, it.body),
  )
  show heading.where(level: 3): it => block(
    above: 1.2em,
    below: 0.5em,
    text(font: sans, weight: 700, size: 10.5pt, it.body),
  )

  if kicker-text != none {
    kicker(kicker-text)
    v(1mm)
  }
  if title != none {
    block(below: 1.2em, text(font: serif, weight: 600, size: 22pt, title))
  }

  body
}
