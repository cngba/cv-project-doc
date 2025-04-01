
= Methodology

Our goal is to create an efficient image hashing system, in which the binary codes are compact, similar images should be encoded to similar binary codes in Hamming space, and the binary codes should be computed efficiently.

In this project, we implement Deep Supervised Auto-Encoder Hashing, followed by a two-stage retrieval pipeline, where SAEH-generated hash codes provide fast approximate search. 

== Two-stage Retrieval Pipeline

Retrieving images is a process of two steps. Step 1 is fast approximate search by SAEH Hash Codes, in which images are encoded into compact binary hash codes using SAEH. A hash-based search quickly retrieves a coarse set of candidate images that are similar to the query.

=== Data Preparation
We utilize the CIFAR-10 dataset, comprising 60k $32 times 32$ color images across 10 classes, with 6k images per class. Each image is normalized to have zero mean and unit variance. 
// Data augmentation techniques, such as random cropping and horizontal flipping, are applied to improve model generalization.

=== SAEH

The SAEH model integrates supervised learning within an auto-encoder architecture to generate compact binary hash codes for images. This model consists of three primary components: an encoder, a supervisory network, and a decoder.

The encoder employs a convolutional neural network (CNN) to extract high-level features from input images and map them to a lower-dimensional space, producing initial hash codes. Given an input image $x$, the encoder function $E(x; theta_e)$ maps the image into a feature space $h$, where $h = E(x; theta_e)$. The feature space representation is then binarized into hash codes $b$, where $b = "sign"(h)$.

The supervisory network introduces supervised constraints by enforcing similarity preservation. It employs a classification loss to ensure that images from the same class have similar hash codes. Given class label $y$, a cross-entropy loss $L_"cls"$ is defined as:

$
  L_"cls" = - Sigma y_i log(hat(y)_i)
$
== Expected Outcomes

   - A clear comparative analysis of DSH methods under the two-stage retrieval framework.
   - Identification of the best-performing refinement techniques for improving accuracy.
   - Practical insights into balancing retrieval speed and ranking precision.
   - Comprehensive benchmarking results that position the proposed method as a leader in learning-based hashing for image retrieval.

