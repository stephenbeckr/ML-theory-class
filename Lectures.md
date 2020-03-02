# Day by day lecture schedule
Theoretical Machine Learning (APPM 7400) class, Spring 2020, at CU Boulder

Abbreviations for sources:
- [SSS] is Shai Shalev-Shwartz and Shai Ben-David's "Understanding Machine Learning"
- [Mohri] is Mehryar Mohri, Afshin Rostamizadeh and Ammet Talwaker's "Foundations of Machine Learning" (2nd ed)
- [Woodruff] is David Woodruff's 2014 [Sketching as a Tool for Numerical Linear Algebra](http://dx.doi.org/10.1561/0400000060)
- [Hastie] is [The Elements of
Statistical Learning](https://web.stanford.edu/~hastie/ElemStatLearn/) by Hastie, Tibshirani and Friedman (2nd ed, 2009)
- [Vogel] is [Computational Inverse Problems](https://epubs.siam.org/doi/book/10.1137/1.9780898717570) by Vogel (2002).



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
