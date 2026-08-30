// Slide deck for the founding meeting of EuroZig e.V. on 13 September 2026.
// Compile with ../build.sh or directly with:
//   typst compile --root .. 20260913_EuroZig_Founding_Meeting_Slides.typ
//
// The fee rates are still open; they are marked with `tbd` here for the same
// reason as in en/membership-fee-regulations.typ — the Members' assembly fixes
// them on the day. Keep the slide in sync with that document.
#import "../templates/slides.typ": eurozig-slides, slide
#import "../templates/eurozig.typ": highlight, ink

#show: eurozig-slides.with(
  kicker-text: "Sunday, 13 September 2026 · Munich",
  title: "EuroZig Founding Meeting",
  footer-note: "EuroZig e.V. (in formation) · eurozig.eu",
  lang: "en",
)

#let tbd = text(fill: highlight, weight: 700, "[ … ]")

#slide(title: "Membership Fee Regulations")[
  Agenda item 7 — setting the membership fees and adopting the regulations.

  #table(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    // Horizontal rules only, as in the regulations themselves.
    stroke: (x, y) => (
      top: if y == 0 { 0.6pt + ink } else { none },
      bottom: if y == 0 or y == 4 { 0.6pt + ink } else { 0.2pt + ink },
    ),
    inset: (x: 4pt, y: 6pt),
    table.header(
      text(weight: 700, "Membership"),
      text(weight: 700, "Fee per year"),
    ),
    [Regular members], tbd,
    [Regular members, reduced rate], tbd,
    [Supporting members -- natural persons (minimum fee)], tbd,
    [Supporting members -- legal persons (minimum fee)], tbd,
  )

  - Annual fee, payable in advance; pro rata in the year of joining
  - SEPA direct debit or credit transfer, annually or quarterly
  - Reduced rate on application; deferral or waiver in cases of hardship
]

#slide(title: "Remuneration Regulations")[
  Agenda item 8 — adoption of the regulations on expenses and remuneration.

  - Offices honorary for now; can be changed by the members assembly later
  - Instructor and volunteer allowances ("Übungsleiter-" and "Ehrenamtspauschale"), only on a prior written award
  - Together with contract remuneration, capped at 3,000 euro per person and year
  - The board decides within the regulations; payments to board members are decided
    by the Members' assembly alone
  - Claims within three months, with receipts, paid by credit transfer; all payments
    are disclosed in the annual report
]

#slide(title: "Instructor Allowance for the Board")[
  Agenda item 9 — the award that § 7 (1) of the regulations reserves to the assembly.

  - A lump-sum allowance for a board member cannot be granted by the board itself;
    only the Members' assembly may award it
  - Proposed: up to the tax-free instructor allowance (#sym.section#h(0.3em)3 Nr. 26 EStG,
    "Übungsleiterpauschale") for teaching work, at most #tbd euro per person and year
  - Period 13 September 2026 to 31 December 2027 -- an award cannot be made for a
    period that has already ended, and the assembly meets once a year
  - The board offices stay honorary; this is not a resolution on paid offices under
    #sym.section#h(0.3em)6 (5) of the Bylaws
]
