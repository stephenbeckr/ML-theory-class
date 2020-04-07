# Day by day lecture schedule
Theoretical Machine Learning (APPM 7400) class, Spring 2020, at CU Boulder

Abbreviations for sources:
- [SSS] is Shai Shalev-Shwartz and Shai Ben-David's [Understanding Machine Learning](https://www.cs.huji.ac.il/~shais/UnderstandingMachineLearning/)
- [Mohri] is Mehryar Mohri, Afshin Rostamizadeh and Ammet Talwaker's [Foundations of Machine Learning](https://cs.nyu.edu/~mohri/mlbook/) (2018, 2nd ed, [MIT press](https://cs.nyu.edu/~mohri/mlbook/))
- [Woodruff] is David Woodruff's 2014 [Sketching as a Tool for Numerical Linear Algebra](http://dx.doi.org/10.1561/0400000060)
- [Hastie] is [The Elements of
Statistical Learning](https://web.stanford.edu/~hastie/ElemStatLearn/) by Hastie, Tibshirani and Friedman (2nd ed, 2009)
- [Vogel] is [Computational Inverse Problems](https://epubs.siam.org/doi/book/10.1137/1.9780898717570) by Vogel (2002).
- [RW] is [Gaussian Processes for Machine Learning](http://www.gaussianprocess.org/gpml/) by Rasmussen and Williams (2006, MIT press, free PDFs online)
- [Murphy] is Kevin Murphy's [Machine Learning: a Probabilistic Perspective](https://www.cs.ubc.ca/~murphyk/MLbook/) (2012, MIT press)



### Week 1.  Ch 1, 2, 3 [SSS]
- [Mon 1/13] **Introduction**, ch 1 [SSS], parts of ch 1.3 [Mohri]. What is ML, compare to other types of learning, types of learning (supervised, etc.), standard tasks, papaya example, inductive bias and generalization
- [Wed 1/15] Ch 2 [SSS], papaya example, setting up **ERM** and notation, risk, realizability, **PAC model**

- [Fri 1/17] Ch 2 [SSS] continued, analysis of finite hypothesis class. Ch 3 [SSS], general **PAC learning**, agnostic case, general loss function, brief history. Ch 4 [SSS], introduce **uniform convergence**

### Week 2.  Ch 4, 5 [SSS]
- [Mon 1/20] *no class (holiday)*
- [Wed 1/22] More ch 4 [SSS], **Chebyshev** and **Hoeffding** inequalities, Berry-Esseen CLT, probability handout with more concentration inequalties (on Canvas), analysis of uniform convergence for finite classes.

- [Fri 1/24] Ch 5.1 [SSS], **No-free-lunch theorem** and proof.

### Week 3.  Ch 5, 6, 26 [SSS] and ch 3 [Mohri]
- [Mon 1/27] Ch 5.2 [SSS], **error decomposition** aka **Bias-Complexity Tradeoff**, discuss "double-descent" curve of [Reconciling modern machine-learning practice and the classical bias–variance trade-off](http://www.pnas.org/lookup/doi/10.1073/pnas.1903070116) by  Belkin, Hsu, Ma, and Mandal (PNAS '19). Start Ch 6 of [SSS] on "VC-dimension" but first move to ch 3.1 in [Mohri] on **Rademacher complexity**, defining empirical and full version.
- [Wed 1/29] More ch 3 [Mohri], and Lemma 26.2 in [SSS] on representativeness. **McDiarmid** inequality, and prove **Rademacher generalization bound** (Thm 3.3 [Mohri], Thm 26.5 [SSS]).

- [Fri 1/31] finish proof, Thm 3.5 [Mohri] for binary classification, calculus tools (Lemma 26.6, 26.7, 26.9 [SSS]), **Massart Lemma** (Lemma 26.8 [SSS]), Examples in [SSS]

### Week 4. JL, Ch 27, 6 [SSS] and ch 3 [Mohri]
- [Mon 2/3] Other notions of complexity like pseudo-dimension, fat-shattering. In-depth discussion of **covering numbers**, and prove **Johnson-Lindenstrauss lemma** (very similar to proof in [Mohri]), prove bound on covering number of balls, use Dudley-style **chaining** argument to show a JL embedding is also a subspace embedding (following ch 2 in Woodruff's 2014 [Sketching as a Tool for Numerical Linear Algebra](http://dx.doi.org/10.1561/0400000060)).
- [Wed 2/5] Lemma 27.4 in [SSS] on bounding Rademacher complexity via covering numbers, using chaining ideas. Define the **growth function**, use it to bound Rademacher complexity via Massart lemma.

- [Fri 2/7] Ch 6 [SSS] and ch 3 [Mohri] on **VC dimension**, relation to growth function, examples, first part of hyperplane example (Ex 3.12 [Mohri])

### Week 5. Ch 6, 9 [SSS] and ch 3 [Mohri]
- [Mon 2/10] More VC dimension, finish examples (**Radon's theorem**), Thm 6.7 [SSS] on Fundamental Theorem of PAC learning (binary classification)
- [Wed 2/10] sketch part of proof of Thm 6.7, discuss relation to Rademacher complexity, use **Sauer's Lemma** (Thm 3.17 and Corollary 3.18 [Mohri]) to bound growth function via VC dimension, and bound Rademacher complexity via growth function (Cor 3.8 [Mohri]), to get an equivalent of Thm 6.11 [SSS] (don't prove Thm directly since proof in [SSS] reproduces most of the work we did with Rademacher complexity).  Start Ch 9 [SSS] on **linear predictors**, and ch 9.1 on **binary classification with halfspaces**.

- [Fri 2/14] More ch 9 [SSS], **perceptron**, start ch 9.2 on **linear regression**, add own comments on solving least-squares problems (ill-conditioning of direct normal equations; QR, CG, SGD approaches instead).

### Week 6. Ch 9, 10 [SSS] and ch 11 [Mohri]
- [Mon 2/17] polynomial regression, theory of regression (ch 11 [Mohri]) with shattering of real-valued functions and **pseudo-dimension** then ch 9.3 [SSS] on **logistic regression** and MLE, mention `numpy.log1p` and `numpy.logaddexp` and overflow issues.
- [Wed 2/19] Ch 10 [SSS] on **boosting**, define weak learner, [SSS] 3-piece classifier and decision stump example

- [Fri 2/21] more boosting, discuss complexity of sorting, finding top-k elements, median, and shuffling. Introduce **AdaBoost**, prove main analysis result (Thm 10.2 [SSS], Thm 7.2 [Mohri]), following Mohri's proof.

### Week 7. Ch 10 and 11 [SSS]
- [Mon 2/24] more boosting, relation to **bagging** and **bootstrap sampling**, analysis of VC dimension. Start ch 11.1 in [SSS] on **Structural Risk Minimization (SRM)**, then **Mallow's Cp statistic** aka **UPRE** from [Hastie]
- [Wed 2/26] Equivalence of Mallow's Cp with UPRE, and generalization of UPRE to **Stein's Unbiased Risk Estimate (SURE)**. Derivation of UPRE, loosely based on [Vogel]. Detour on **Stein's Phenomenon** and the **James-Stein estimator**. Briefly mention **Akaike Information Criterion (AIC)** and **Bayesian Information Criterion (BIC)**, loosely based on [Hastie].

- [Fri 2/28] **Minimum Description Length (MDL)**, loosely based on [Hastie], [Grunwald] and [SSS]. [Grunwald] is [A tutorial introduction to the minimum description length principle](https://arxiv.org/abs/math/0406077) (Peter Grunwald, 2004). **Bootstrap** sampling and .632 correction, following [Hastie]. **Morozov Discrepancy Principle** following [Vogel].

### Week 8. Ch 11 and 12 [SSS]
- [Mon 3/2] Finish model selection chapter by discussing **L-curve method** and **Cross-validation** (Thm 11.1 and 11.2 in [SSS], and discussion in [Hastie]), and **Generalized Cross-validation (GCV)** [Vogel].
- [Wed 3/4] Review for midterm

- [Fri 3/6] Midterm exam (in class, closed book)

### Week 9. Ch 12 [SSS]
- [Mon 3/9] Ch 12 on **convexity**: convex functions and sets, convex optimization problems, convex learning problems. Lipschitz continuity and (strong) smoothness; basic inequalities (see [Convex inequalities](Notes/ch12_convexInequalities.pdf))
- [Wed 3/11] More ch 12, with more inequalities and examples.

- [Fri 3/13] Class cancelled at the last minute due to campus coronavirus closure

### Week 10. Ch 13 and 14 [SSS] (Class has moved fully online due to coronavirus)
- [Mon 3/17] Ch 13 on **regularization and stability** aka **algorithmic stability**, introducing **regularized loss minimization (RLM)**, and the new concept of *expected* risk. Analysis of the **on-average-replacement-stability** for strongly convex/Tikhonov  regularization (e.g., **ridge regression**), somewhat similar to the *uniform stability* of ch 14 [Mohri]. Lecture via **screencast** posted to Canvas; see [PDF of notes (typed)](Notes/ch13_stability_article.pdf)
- [Wed 3/19] Finish ch 13, discuss bias term, history, bagging (and comparison with boosting), and comparison with [Mohri] presentation.  Lecture also via **screencast**
- [Fri 3/21] Ch 14 in [SSS] on **stochastic gradient descent (SGD)**, discussing SA (stochastic approximation) vs SAA (sample-average approx., i.e., ERM), as well as error terms and types of convergence in probability. Prove L1 convergence of SGD; connection to learning (corollary 14.2). [PDF of notes (handwritten) about SGD](notes/ch14_SGD.pdf)

- As an optional supplement (or think of this as making up for the cancelled class 3/13/20), an optional lecture on **gradient descent** (and subgradient descent) showing somewhat unified convergence proofs for various cases based on main telescoping-series lemma. Covers cases such as convex and Lipschitz (but not smooth), smooth but non-convex, smooth and convex, smooth and strongly convex; discussion of **convergence rates**; geometry of **descent lemma**.
[PDF of notes (handwritten) about gradient descent](notes/GradientDescentSupplement.pdf)

### Spring break

### Week 11. Ch 15, 16 [SSS] and Gaussian Processes
- [Mon 3/31] Ch 15 on **Support Vector Machines (SVM)**, first discussing **margin** and hard-SVM, then soft-SVM and equivalent ways to rewrite it (via duality and as RLM), and using RLM theory to get generalization guarantees. [PDF of notes (handwritten) about SVM](Notes/ch15_SVM.pdf)
- [Wed 4/1] Ch 16 on **Kernel methods**, showing example of the **kernel trick** on kernel ridge regression (not in book), and general theory for SVM and beyondn using the **representer theorem** (with proof). A few examples of kernels; restrictions on kernel functions via **Mercer's Theorem**, brief example of **Reproducing Kernel Hilbert Space (RKHS)** without going into detail.  Supplement on **Nystrom method**, and **Random Fourier Features** and **Bochner's Theorem** for shift-invariant kernels.

- [Fri 4/3] **Gaussian Processes**, following a mixture of [RW] and [Murphy] ([Murphy] is a condensed presentation, based on [RW]). Introduce main idea, and **kernel trick**, and some brief comparison with SVM. [PDF of notes (handwritten) bout GP](Notes/GaussianProcesses.pdf)

### Week 12. Ch 20 [SSS] on artificial Neural Networks
- [Mon 4/6] **Neural nets** description, background and history, discussion of **approximation error** (e.g., universal function approximation, like Stone-Weierstrass style density theorems) for many variants (e.g., L^1 density, density in continuous functions with uniform norm, exact representation of Boolean functions, etc.). Lower bounds on size of networks needed to approximate functions. Some from book, some from recent neural net papers in past 4 years.  Discussion of shortcoming of classical theory, some mention of modern algorithm-dependent approaches.
- [Wed 4/8] Short lecture on bounding the **VC dimension of neural nets**. Proof for one activation function, results stated for two more activation functions.

- [Fr 4/10] Short lecture on the **NP-Hardness of ERM (e.g., training) for neural nets** (no proof), discussion of **SGD** again, except in non-convex case. Introduce **reverse-mode Automatic Differentiation** (at a high-level, no example) and **backpropagation** for neural nets.
