#import "/iclr2025.typ": iclr2025

#let author-note = footnote[
  Use footnote for providing further information about author (webpage,
  Alternative address) --- *not* for acknowledging funding agencies.  Funding
  Acknowledgements go at the end of the paper.
]

/**
 * Authors should be specified as a list of entries. Each entry enumerates
 * authors with the same affilation and address. Field `names` is mandatory.
 */
#let authors = (
  (
    names: ([ Nguyen Ba Cong ], ),
    affilation: [ 22127046 ],
    email: "nbcong22@clc.fitus.edu.vn",
  ),
  (
    names: ([ Dang Tran Anh Khoa  ], ),
    affilation: [ 22127024 ],
    email: "dtakhoa22@clc.fitus.edu.vn",
  ),
)

#show: iclr2025.with(
  title: [Example Template],
  authors: authors,
  keywords: (),
  abstract: [
    Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.
  ],
  bibliography: bibliography("biblio.bib"),
  appendix: [
    #include "appendix.typ"
  ],
  accepted: true,
)

#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(
    indent: auto,
)

#let url(uri) = link(uri, raw(uri))

#import "chapters/intro.typ"

#import "chapters/related-work.typ"

#import "chapters/methodology.typ"

