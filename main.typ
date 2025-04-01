#import "preamble.typ": *

#show: iclr2025.with(
  title: [Deep Supervised Hashing for Image Retrieval],
  authors: authors,
  keywords: (),
  abstract: [
    // The rapid growth of image datasets has made traditional image retrieval methods inefficient in terms of accuracy and scalability. Hashing-based techniques address this by encoding high-dimensional image data into compact binary codes, enabling fast retrieval with minimal storage. However, Deep Supervised Hashing (DSH) methods often struggle with quantization loss and suboptimal similarity preservation.

    // This study explores a two-stage retrieval approach, where an initial fast search using hashing is followed by a refinement stage to improve ranking precision. We compare various DSH methods under this framework, analyzing their trade-offs between retrieval speed, accuracy, and computational efficiency. By standardizing evaluation metrics and testing across multiple datasets, we aim to provide clear insights into optimizing hashing-based image retrieval.
    This project presents Deep Supervised Hashing (DSH), a image retrieval method integrated by deep learning, enabling fast retrieval with minimal storage.
    However, DSH may suffer from quantization loss and suboptimal similarity preservation. Therefore, this project integrates DSH with a two-stage retrieval approach, where an initial fast search using hashing is followed by a refinement stage to improve ranking precision.
     
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
#bib_state.update(none)

#include "./chapters/intro.typ"

#include "./chapters/related-work.typ"

#include "./chapters/methodology.typ"

