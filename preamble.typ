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


#let url(uri) = link(uri, raw(uri))
#let bib_state = state("bib_state",
bibliography("biblio.bib", title: auto))