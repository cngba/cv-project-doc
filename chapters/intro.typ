= General 

== Motivation
With the exponential growth of image datasets, traditional image retrieval methods have become increasingly inefficient in terms of both accuracy and scalability. Conventional approaches struggle with the high-dimensional nature of image data, leading to slow retrieval speeds and excessive storage requirements. Modern databases contain millions of images, making retrieval computationally expensive in both time and memory.

To address these challenges, hashing-based techniques have been widely adopted. By encoding images into compact binary codes, they allow for fast similarity searches with reduced memory consumption. Among these methods, Deep Supervised Hashing (DSH) has emerged as a powerful approach, leveraging deep learning to learn optimal hash functions that map high-dimensional image features into binary representations.

For DSH to be effective at scale, it must efficiently compute hash codes for each image and ensure that retrieval operations remain computationally feasible. Ideally, a well-trained hashing model enables near constant-time $O(1)$ lookups in hash tables for exact matches, while approximate nearest neighbor search in Hamming space remains significantly faster than exhaustive comparisons.

However, despite its advantages, existing DSH methods still face several challenges, including:
- Suboptimal hash code learning, leading to a loss of semantic information.
- Difficulty in preserving visual similarities, affecting retrieval accuracy.
- Sensitivity to noise, variations, and domain shifts, reducing robustness.
- Computational overhead, particularly during training and large-scale inference.
- Limited generalization across datasets, restricting real-world applicability.

Therefore, there is a need to explore and develop improved Deep Supervised Hashing techniques that enhance retrieval accuracy, efficiency, and robustness.


== Problem Statement

This project aims to develop an efficient and accurate image retrieval system using deep learning. The system takes a query image as input and retrieves a ranked list of images that contain objects of the same type.

To be practical for large-scale databases, the retrieval process must operate under strict time and memory constraints while maintaining high accuracy. The model will be trained on a specific dataset and evaluated on its ability to generalize to unseen queries.

Key challenges include:
- Ensuring fast and scalable retrieval for large image datasets.
- Learning robust representations that preserve semantic similarity.
- Handling variations in object appearance, background clutter, and noise.

== Contribution

Efficient image retrieval relies on encoding high-dimensional visual features into lower-dimensional representations while preserving semantic relationships.
Hashing techniques have been widely adopted due to their ability to enable fast comparisons using Hamming distance.
However, challenges such as semantic loss during hashing and sensitivity to data distribution limit their real-world effectiveness.

Along the general retrieval system implemented with deep hashing, we propose a two-stage retrieval approach can mitigate the aforementioned issues by leveraging hashing for an initial fast search, followed by a refinement stage that improves ranking precision. This study explores:

- The strengths and weaknesses of various DSH methods under this two-stage framework.
- The impact of different ranking refinement strategies on retrieval accuracy.
- A fair and standardized evaluation of these techniques across diverse datasets.

