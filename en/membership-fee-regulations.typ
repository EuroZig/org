// Membership fee regulations of EuroZig e.V. — translation of de/beitragsordnung.typ.
// Compile with ../build.sh (which stamps the revision into the footer) or directly with:
//   typst compile --root .. --input rev=$(git rev-parse --short=8 HEAD) membership-fee-regulations.typ
//
// The fee rates have not been decided yet. They are marked with `tbd` so the
// typeset PDF keeps showing what the Members' assembly still has to fix; every
// one of those spots must be replaced before publication. Keep in sync with the
// German original.
#import "../templates/bylaws.typ": bylaws-doc
#import "../templates/eurozig.typ": highlight, ink

#show: bylaws-doc.with(
  title: "Membership Fee Regulations",
  lang: "en",
)

#let tbd = text(fill: highlight, weight: 700, "[ … ]")

= § 1 Obligation to pay

+ Every member is obliged to pay an annual membership fee.

+ The fee year is the financial year and therefore the calendar year.

+ The obligation to pay begins with the month in which the board grants the application for membership and ends when the membership ends.

= § 2 Amount of the fees

+ The annual membership fee is:

  #table(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    // Horizontal rules only: strong at the top, below the header and at the
    // foot, hairlines between the fee categories.
    stroke: (x, y) => (
      top: if y == 0 { 0.6pt + ink } else { none },
      bottom: if y == 0 or y == 4 { 0.6pt + ink } else { 0.2pt + ink },
    ),
    inset: (x: 4pt, y: 7pt),
    table.header(
      text(weight: 700, "Membership"),
      text(weight: 700, "Fee per year"),
    ),
    [Regular members], tbd,
    [Regular members, reduced rate], tbd,
    [Supporting members -- natural persons (minimum fee)], tbd,
    [Supporting members -- legal persons (minimum fee)], tbd,
  )

+ The reduced rate is granted on application to pupils, students, apprentices, persons in a voluntary service, unemployed persons and persons in comparably limited economic circumstances. The board may request evidence. The reduction applies to the current fee year; if the conditions for it cease to apply, the member informs the board.

+ Members may at any time commit to a fee higher than the minimum.

+ All amounts are denominated in euro.

= § 3 Due date

+ The fee is payable in advance. The payment dates follow from the means of payment chosen by the member under § 4.

+ If a member joins during a fee year, one twelfth of the annual fee is payable for each month of membership begun in that year.

+ If the membership ends during a fee year, fees already paid are not refunded.

= § 4 Means of payment

+ With the application for membership, every member chooses

  + between payment by SEPA direct debit and payment by credit transfer, and

  + between annual and quarterly payment.

  The choice may be changed in text form; the change takes effect from the following fee year. If a member makes no choice, they pay annually by direct debit.

+ Where payment is annual, the annual fee is payable on 15 January of the fee year. Where payment is quarterly, it is payable in four equal instalments on 15 January, 15 April, 15 July and 15 October. If one of these days falls on a Saturday, a Sunday or a public holiday at the seat of the association, the next banking day takes its place.

+ Payment by SEPA direct debit requires a euro-denominated payment account that is reachable for SEPA Core Direct Debit. For this purpose the member grants the association a SEPA direct debit mandate (Einzugsermächtigung) in text form. The debit is collected on the dates set out in paragraph 2. Where the payment account is held outside the European Economic Area, the mandate must additionally state the member's postal address.

+ The mandate reference is communicated to the member together with the confirmation of membership. The pre-notification is given once for all recurring debits together with that confirmation, and again whenever the amount or the date changes; the pre-notification period is shortened to five calendar days before the debit.

+ Payment by credit transfer is made to the association's account, stating the member's name and membership number as the payment reference. The amount must be credited to the association no later than on the due date.

+ In the year of joining, the pro-rata fee under § 3 (2) is payable as a single sum. Where payment is by credit transfer, it is due 14 days after the application for membership has been granted; where payment is by SEPA direct debit, it is collected on the next date under paragraph 2.

+ By way of derogation from paragraphs 1 to 6, members holding a payment account outside the SEPA area pay the annual fee in advance through a payment service provider designated by the board and published on the association's website. Payment is made in euro; the association must be credited with the full amount of the fee. Charges of the payment service provider, transfer charges of other institutions and the cost of currency conversion are borne by the member.

+ In justified individual cases, the board may admit another means of payment.

= § 5 Duty to notify

Changes of bank details, postal address and e-mail address must be communicated to the board in text form without undue delay. Costs incurred by the association because such a notification was omitted are borne by the member.

= § 6 Default of payment and returned debits

+ If a member does not pay a fee that has fallen due, the board issues a reminder in text form setting a reasonable deadline.

+ Charges incurred by the association through a returned direct debit for which the member is responsible, in particular for insufficient funds or an objection raised without legitimate grounds, are borne by the member.

+ The right to expel a member for outstanding fees under § 3 (6) b of the Bylaws remains unaffected.

= § 7 Deferral and waiver

Upon written application, the board may defer or waive the fee in whole or in part if paying it would cause undue hardship to the member. Such a decision applies to one fee year at a time.

= § 8 Entry into force

These membership fee regulations were adopted by the Members' assembly on 13 September 2026 and enter into force on 13 September 2026.
