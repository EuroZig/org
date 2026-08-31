// Slide deck for the founding meeting of EuroZig e.V. on 13 September 2026.
// Compile with ../build.sh or directly with:
//   typst compile --root .. 20260913_EuroZig_Founding_Meeting_Slides.typ
//
// The fee rates are still open; they are marked with `tbd` here for the same
// reason as in en/membership-fee-regulations.typ — the Members' assembly fixes
// them on the day. Keep the slides in sync with that document and with
// en/remuneration-regulations.typ.
#import "../templates/slides.typ": eurozig-slides, slide
#import "../templates/eurozig.typ": highlight, ink

#show: eurozig-slides.with(
  kicker-text: "Sunday, 13 September 2026 · Munich",
  title: "EuroZig Founding Meeting",
  footer-note: "EuroZig e.V. (in formation) · eurozig.eu",
  lang: "en",
)

#let tbd = text(fill: highlight, weight: 700, "[ … ]")

#slide(title: "Attendance List", item: 2)[
  - Please sign the attendance list!
  - Add your name if it is not on it yet
]

#slide(title: "How We Vote")[
  - The Members' assembly generally passes its resolutions by relative majority in an open vote
  - Abstentions have no effect
  - At the request of at least three members entitled to vote, the vote must be held by secret ballot
  - If, in an election, no candidate obtains a majority of the votes of the members present, the candidate who has received the majority of the valid votes cast is elected; where there are several candidates, a runoff is held
]

#slide(title: "Chair of the Meeting and Keeper of the Minutes", item: 3)[
  - Voting time!
]

#slide(title: "Our Bylaws", item: 4)[
  - The German version is legally binding
  - The English version is the one discussed here
  - #link("https://eurozig.eu/bylaws.pdf")[eurozig.eu/bylaws.pdf]
]

#slide(title: "Vote on the Bylaws", item: 4)[
  - Voting time!
]

#slide(title: "Election of the Three Board Members", item: 5)[
  We are standing for election!
  - David Sugar
    - Zigtoberfest organiser
  - Jan Beete
    - Zig Day Nuremberg organiser
  - Julian Dax
    - (soon to be) Zig Day Cologne organiser
    - Awebo and Aro contributor

  We choose the offices among ourselves, as the Bylaws provide.
]

#slide(title: "Vote on the Board", item: 5)[
  - Voting time!
]

#slide(title: "Election of the Cash Auditor", item: 5)[
  We are standing for election!
  - TBD
]

#slide(title: "Vote on the Cash Auditor", item: 5)[
  - Voting time!
]

#slide(title: "Membership Fee Regulations", item: 6)[
  Setting the membership fees and adopting the regulations.

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

#slide(title: "Remuneration Regulations", item: 7)[
  Adoption of the regulations on expenses and remuneration.

  - Offices honorary for now; the Members' assembly can change that later
  - Instructor and volunteer allowances ("Übungsleiter-" and "Ehrenamtspauschale"),
    only on a prior written award
  - Together with contract remuneration, capped at 3,000 euro per person and year
  - The board decides on payments; a board member is excluded from deciding on a
    payment to themselves
  - Claims within three months, with receipts, paid by credit transfer; all payments
    are disclosed in the annual report
]

