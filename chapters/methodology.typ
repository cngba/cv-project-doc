
= Methodology

We aim to implement the two-stage retrieval approach, along with compare various deep learning based hashing models (or methods) in a multitude of aspects (such as training, runtime and general efficiency of resources) to hopefully find out the most effective model in general.
The models will all be fed the same dataset and operated on the same device to ensure that the comparison is as impartial as possible, as different machines' processing power and datasets certainly will make or break some parts of the algorithms.


- Dataset Selection: Use diverse datasets such as CIFAR-10, NUS-WIDE to test generalization
- Model Implementation and Training: Train DSH models using PyTorch. Ensure consistent training settings across models.
- Two-Stage Retrieval Process:

- Step 1 - Fast Approximate Search via Hashing: Compute binary hash codes for query and database images
- Step 2 - Refinement and Re-ranking: Apply Similarity re-ranking using deep features embedding or graph-based methods, then compare different refinement techniques with analysis.

- Evaluation Metrics: Analyze retrieval performance under varying code lengths (e.g., 16-bit, 32-bit, 64-bit).

== Expected Outcomes

   - A clear comparative analysis of DSH methods under the two-stage retrieval framework.
   - Identification of the best-performing refinement techniques for improving accuracy.
   - Practical insights into balancing retrieval speed and ranking precision.
   - Comprehensive benchmarking results that position the proposed method as a leader in learning-based hashing for image retrieval.

