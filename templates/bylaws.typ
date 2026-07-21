// Shared template for the EuroZig statutes (Satzung / Bylaws).
// Extends the general A4 house style with the numbered-clause enumeration
// used throughout the legal text, and stamps the footer with the source
// revision and the compilation date.
//
// The revision is passed in at compile time, e.g.
//   typst compile --root .. --input rev=$(git rev-parse --short=8 HEAD) bylaws.typ
// or simply via ./build.sh, which also marks a dirty working tree.
//
// Usage:
//   #import "../templates/bylaws.typ": bylaws-doc
//   #show: bylaws-doc.with(title: "Bylaws", lang: "en")
#import "eurozig.typ": eurozig-a4

#let bylaws-doc(
  title: none,
  lang: "en",
  body,
) = {
  let rev = sys.inputs.at("rev", default: "unknown")
  let date = datetime.today().display("[year]-[month]-[day]")

  eurozig-a4(
    kicker-text: "EuroZig e.V.",
    title: title,
    lang: lang,
    footer-note: "EuroZig e.V. · eurozig.eu · Rev. " + rev + " · " + date,
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
}
