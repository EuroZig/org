// Shared template for the EuroZig statutes (Satzung / Bylaws).
// Extends the general A4 house style with the numbered-clause enumeration
// used throughout the legal text.
//
// Usage:
//   #import "../templates/bylaws.typ": bylaws-doc
//   #show: bylaws-doc.with(title: "Bylaws", lang: "en")
#import "eurozig.typ": eurozig-a4

#let bylaws-doc(
  title: none,
  lang: "en",
  body,
) = eurozig-a4(
  kicker-text: "EuroZig e.V.",
  title: title,
  lang: lang,
  {
    // Numbered clauses: "(1)" at the top level, "a)" when nested.
    set enum(
      full: true,
      numbering: (..n) => {
        let nums = n.pos()
        if nums.len() <= 1 { numbering("(1)", nums.last()) } else { numbering("a)", nums.last()) }
      },
    )
    body
  },
)
