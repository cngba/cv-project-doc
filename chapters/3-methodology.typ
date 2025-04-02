
= Methodology

Our goal is to create an efficient image hashing system, in which the binary codes are compact, similar images should be encoded to similar binary codes in Hamming space, and the binary codes should be computed efficiently.

In this project, we implement Deep Supervised Auto-Encoder Hashing, followed by a two-stage retrieval pipeline, where SAEH-generated hash codes provide fast approximate search. 


Retrieving images is a process of two steps. Step 1 is fast approximate search by SAEH Hash Codes, in which images are encoded into compact binary hash codes using SAEH. A hash-based search quickly retrieves a coarse set of candidate images that are similar to the query.

== Data Preparation
We utilize the CIFAR-10 dataset, comprising 60k $32 times 32$ color images across 10 classes, with 6k images per class. Each image is normalized to have zero mean and unit variance. 
// Data augmentation techniques, such as random cropping and horizontal flipping, are applied to improve model generalization.

== Stage 1: SAEH

The SAEH model integrates supervised learning within an auto-encoder architecture to generate compact binary hash codes for images. This model consists of three primary components: an encoder, a supervisory network, and a decoder.

The encoder employs a convolutional neural network (CNN) to extract high-level features from input images and map them to a lower-dimensional space, producing initial hash codes. Given an input image $x$, the encoder function $E(x; theta_e)$ maps the image into a feature space $h$, where $h = E(x; theta_e)$. The feature space representation is then binarized into hash codes $b$, where $b = "sign"(h)$.

The supervisory network introduces supervised constraints by enforcing similarity preservation. It employs a classification loss to ensure that images from the same class have similar hash codes. Given class label $y$, a cross-entropy loss $L_"cls"$ is defined as:

$
  L_"cls" = - Sigma y_i log(hat(y)_i)
$

where $hat(y)_i$ is the predicted class probability for image $x_i$. Additionally, a pairwise similar loss is applied to minimize the Hamming distance between similar images:

$
  L_"sim" = Sigma_(i,j) S_(i j) || b_i - b_j ||^2
$

where $S_(i j)$ is a similarity matrix where $S_(i j) = 1$ if $x_i$ and $x_j$ belong to the same class, and $S_(i j) = 0$ otherwise.

The decoder reconstructs the original image from the hash codes to maintain essential image features. The reconstruction loss $L_"rec"$ is given by:

$
  L_"rec" = Sigma_i || x_i - D(b_i;theta_D) ||^2
$

where $D(b;theta_D)$ is the decoder function that reconstructs the image from hash codes. 

The final loss function combines classification, similarity, and reconstruction losses with weighting factors $lambda_1$ and $lambda_2$:
$
  L = L_"cls" + lambda_1 L_"sim" + lambda_2 L_"rec"
$

The training process involves in optimizing $L$ to jointly minimize classification error, ensure similar images have similar hash codes, and preserve essential structure for image retrieval.

== Stage 2: Deep Feature Re-ranking

After retrieving an initial candidate set using SAEH hash codes, we apply deep feature re-ranking to refine the hash results. The goal of this step is to improve the ranking accuracy by leveraging richer image representations. Instead of relying solely on binary hash codes, deep feature re-ranking computes feature distances in a continuous space for improved similarity estimation.
1. Feature Extraction: For each retrieved image, we extract deep feature embeddings from an intermediate layer of the SAEH encoder. Let $f_1 = F(x_i, theta_F)$ represent the feature vector extracted from image $x_i$, where $theta_F$ denotes the learned parameters of the encoder.
2. Similarity Computation: Instead of using Hamming distance from hash codes, we compute pairwise distances between deep features.
$
  S_(i j) = frac(f_i dot f_j, ||f_i|| ||f_j||)
$

where $S_(i j)$ measures the similarity between query image $x_i$ and retrieved image $x_j$.
3. Re-ranking: The initial retrieval list is re-ranked based on the refined similarity scores. Given an initial list $R_0$ from the hash-based search, the re-ranked list $R_1$ is computed as:

$
  R_1 = "Sort"(R_0, S_(i j))
$

4. Final Retrieval: The top-ranked images from $R_1$ form the final retrieval set, improving ranking precision over the initial hash-based results.

== Expected Outcomes

   - A clear comparative analysis of DSH methods under the two-stage retrieval framework.
   - Identification of the best-performing refinement techniques for improving accuracy.
   - Practical insights into balancing retrieval speed and ranking precision.
   - Comprehensive benchmarking results that position the proposed method as a leader in learning-based hashing for image retrieval.

