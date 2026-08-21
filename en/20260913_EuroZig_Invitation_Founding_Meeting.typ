// Invitation to the founding meeting of the association EuroZig. Published on the
// website, so it has no recipient. Translation of
// ../de/20260913_EuroZig_Einladung_Gruendungsversammlung.typ, which is the binding text.
// Compile with ../build.sh or directly with:
//   typst compile --root .. 20260913_EuroZig_Invitation_Founding_Meeting.typ
#import "../templates/eurozig.typ": eurozig-a4

#show: eurozig-a4.with(
  kicker-text: "Sunday, 13 September 2026 · Munich",
  title: "Invitation to the founding meeting",
  footer-note: "EuroZig e.V. (in formation) · eurozig.eu",
  lang: "en",
)

// Never break addresses and links across lines.
#show link: it => box(text(hyphenate: false, it))

We are founding a non-profit association called EuroZig. We cordially invite everyone
who would like to help shape it to attend the founding meeting. Anyone who attends and signs the
bylaws becomes a founding member and votes on all resolutions taken that day.

#block(spacing: 1.4em)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.5em,
    text(weight: 700, "Date:"), [Sunday, 13 September 2026, 10:15 (doors open at 10:00)],
    text(weight: 700, "Venue:"), [Perchtinger Straße 8--10, 81379 Munich, Germany],
  )
]

= Agenda

Before entering the agenda:

- Opening of the meeting and welcome
- Determination of attendance and entry in the attendance list
- Election of the chair of the meeting and of the keeper of the minutes
- Announcement and adoption of the agenda

The agenda then follows:

+ *Discussion and adoption of the bylaws*
  - Presentation of the draft bylaws and discussion
  - Resolution on founding the association and on the bylaws
  - Signing of the bylaws by the founding members

+ *Election of the three board members and of the auditor*
  - Election of the three board members (§ 6 (1) of the bylaws)
  - Election of the auditor (§ 5 (4) of the bylaws)
  - Constitution of the board: election of the chairperson, the second chairperson
    and the treasurer (§ 6 (2) of the bylaws)

+ *Setting the membership fees and adoption of the membership fee regulations*
  - Presentation of the proposed annual fees, discussion and resolution on the fees
    and on the membership fee regulations (§ 5 (5) of the bylaws)

+ *Adoption of the remuneration regulations*
  - Presentation, discussion and resolution on the remuneration regulations
    (§ 5 (6) of the bylaws)

+ *Organisational matters*
  - Authorisation of the board to make those amendments to the bylaws that the
    register of associations or the tax office requires for registration and
    non-profit status
  - Registration with the register of associations and application for non-profit status
  - Setting up the association's bank account and further organisational matters

+ *Any other business* -- discussion of the future direction and activities of the
  association, followed by the closing of the meeting

The draft bylaws, membership fee regulations and remuneration regulations are available
at #link("https://github.com/EuroZig/org")[GitHub]. If you want to propose changes, make
a PR.

We look forward to seeing you.

The EuroZig founding initiative
