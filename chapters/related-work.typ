#import "../preamble.typ": *
// #bibliography("../biblio.bib")
#context bib_state.get()

= Related Work


== Deep Supervised Hashing (DSH)

=== Approach

The approach begins by designing a CNN model that processes image pairs alongside labels indicating whether the two images are similar or not, and outputs binary codes. To increase efficiency, image pairs are generated dynamically during training, enabling the utilization of a significantly larger number of pairs. The loss function is crafted to bring the outputs of similar image pairs closer together while pushing the outputs of dissimilar pairs further apart. This ensures that the resulting Hamming space effectively reflects the semantic structure of the images. Since optimizing directly in Hamming space is nondifferentiable, the network outputs are relaxed to continuous values during training. At the same time, a regularization term is introduced to drive the continuous outputs toward discrete binary values. Using this framework, images are encoded by passing them through the network, followed by converting the network's outputs into binary code representations via quantization.
#cite(<Liu_2016_CVPR>)