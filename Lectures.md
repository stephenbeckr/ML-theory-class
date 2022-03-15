# Day by day lecture schedule
Theoretical Machine Learning (4490/5490) class, Spring 2022, at CU Boulder

Details on what we covered in spring 2020 at [Lectures2020.md](Lectures2020.md).

Abbreviations for sources:
- [SSS] is Shai Shalev-Shwartz and Shai Ben-David's [Understanding Machine Learning](https://www.cs.huji.ac.il/~shais/UnderstandingMachineLearning/)
- [Mohri] is Mehryar Mohri, Afshin Rostamizadeh and Ammet Talwaker's [Foundations of Machine Learning](https://cs.nyu.edu/~mohri/mlbook/) (2018, 2nd ed, [MIT press](https://cs.nyu.edu/~mohri/mlbook/))
- [Woodruff] is David Woodruff's 2014 [Sketching as a Tool for Numerical Linear Algebra](http://dx.doi.org/10.1561/0400000060)
- [Hastie] is [The Elements of
Statistical Learning](https://web.stanford.edu/~hastie/ElemStatLearn/) by Hastie, Tibshirani and Friedman (2nd ed, 2009)
- [Vogel] is [Computational Inverse Problems](https://epubs.siam.org/doi/book/10.1137/1.9780898717570) by Vogel (2002).
- [RW] is [Gaussian Processes for Machine Learning](http://www.gaussianprocess.org/gpml/) by Rasmussen and Williams (2006, MIT press, free PDFs online)
- [Murphy] is Kevin Murphy's [Machine Learning: a Probabilistic Perspective](https://www.cs.ubc.ca/~murphyk/MLbook/) (2012, MIT press)
- [SuttonBarto] is Richard Sutton and Andrew Barto's [Reinforcement Learning: An Introduction](http://incompleteideas.net/book/the-book-2nd.html) (2018, 2nd edition)
- [Puterman] is Martin Puterman's [Markov Decision Processes: Discrete Stochastic Dynamic Programming](https://dl.acm.org/doi/book/10.5555/528623) (1994, John Wiley)



### Week 1.  Ch 1, 2, 3 [SSS]
- [Mon 1/10] **Introduction**, ch 1 [SSS], parts of ch 1.3 [Mohri]. What is ML, compare to other types of learning, types of learning (supervised, etc.), standard tasks, papaya example, inductive bias and generalization. Start on lecture 1
- [Wed 1/12] Finish lecture 1, do lecture 2, and start lecture 3 (up to axis-aligned rectangles)
- [Fri 1/14] (asynchronous) PAC learning, agnostic PAC learning, analysis of finite hypothesis class. Lecture notes 4 and 5

### Week 2. Ch 3 [SSS]
- [Mon 1/17] No school, MLK day
- [Wed 1/19] Lecture notes 6 (recap) and 7 on uniform convergence, and our analysis of UC for finite hypothesis classes; derivation of Hoeffding inequality and mention of other concentration in equalities
  - Notes on other concentration inequalities are posted on Canvas
- [Fri, 1/21] [Lecture notes 8](Notes/8_NoFreeLunches.pdf) on No Free Lunch theorems

### Week 3.
- [Mon 1/24] [Lecture notes 9](Notes/9_BiasVarianceTradeoff.pdf) on Bias-Variance Tradeoff, and half of [Lecture notes 10](Notes/10_Intro_RademacherComplexity.pdf) introducing Rademacher complexity. We follow the Mohri text book for a lot of this.
- [Wed 1/26] Finish Lecture notes 10, then start [Lecture notes 11](11_RademacherComplexity_GeneralizationBound.pdf) on using McDiarmid's inequality to get a generalization bound involving Rademacher complexity
- [Fri 1/28] Finish Lecture notes 11, then start [Lecture notes 12](12_RademacherComplexitySet_CoveringNumbers.pdf) on generalizing Rademacher complexity, tools for calculating it, Massart Lemma, and then covering numbers. We proved a bound on the covering number of a subspace intersectioned with the sphere.

### Week 4.
- [Mon 1/31] (back in person, no PDF of lecture notes). Johnson-Lindenstrauss lemma, and just barely motivate chaining at the end
- [Wed 2/2] (no school, snow day)
- [Fri 2/4] Some JL chaining (for subspace embedding) from Woodruff, then start Dudley's thm from [SSS]

### Week 5.
- [Mon 2/7] Finish Dudley's theorem, start on growth function and VC dimension
- [Wed 2/9] More on VC dimension; examples; growth function
- [Fri 2/11] More on VC dimension; more examples; Sauer's lemma; Fundamental Theorem of (binary) PAC learning, qualitative version

### Week 6. Ch 9 [SSS]
- [Mon 2/14] Start on chapter 9 of the book on linear predictors. Cover binary predictors, introduce linear programs and discuss their complexity. Discuss ERM of binary classification (tractable iff separable).
- [Wed 2/16] Discuss convexity of sets and functions; supremuma, separating hyperplanes, subgradients and subdifferentials, and the subgradient of a max. Apply to Rosenbaltt's perceptron algorithm from 1958.
- [Fri 2/18] Linear regression: solving ERM (normal equations, QR factorization, conjugate gradient, SGD); polynomial regression; theory of regression based on Lipschitz loss functions (Thm 11.3 Mohri) 

### Week 7. Ch 10 [SSS]
- [Mon 2/21] Pseudo-dimension bounds (11.2.3 Mohri) for regression problems; start 9.3 SS on logistic regression and GLM; derive loss function based on maximum likelihood; discuss log-sum-exp trick (e.g., `numpy.logaddexp` and `numpy.log1p`
- [Wed 2/23] Boosting (ch 10 SS); gamma-weak-learners, motivate need for boosting; example with 3-piece classifier and decision stump (10.1 in SS), and complexity of computing ERM of decision stumps
- [Fri 2/25] More boosting; complexity of sorting, top-k problems, median finding, shuffling (Fisher-Yates-Knuth shuffle). Comparison to Bootstrap and Bagging.

### Week 8. Ch 10-11 [SSS]
- [Mon 2/28] AdaBoost algorithm, and analysis of training error convergence.
- [Wed 3/2] Finish AdaBoost (discuss VC dimension). Start model selection, ch 11. Validation (Thm 11.1, 11.2). Introduce Tikhonov regularization (ridge regression) as prototypical problem. The next few lectures we'll talk about:
  - Structural Risk Minimization (SRM); see [SSS]
  - Mallow's **Cp** statistic (and equivalence to Unbiased Predictive Risk Estimate, **UPRE**); see [Hastie] for Cp, or [Vogel] for UPRE.  Equivalence of Mallow's Cp with UPRE, and generalization of UPRE to **Stein's Unbiased Risk Estimate (SURE)**. 
  - Briefly mention **Akaike Information Criterion (AIC)** and **Bayesian Information Criterion (BIC)**, loosely based on [Hastie].
  - **Minimum Description Length (MDL)**, loosely based on [Hastie], [Grunwald] and [SSS]. [Grunwald] is [A tutorial introduction to the minimum description length principle](https://arxiv.org/abs/math/0406077) (Peter Grunwald, 2004). 
  - **Bootstrap** sampling and .632 correction, following [Hastie]. 
  - **Morozov Discrepancy Principle** following [Vogel].
  - **L-curve method**
  - **Cross-validation** (see discussion in [Hastie])
  - **Generalized Cross-validation (GCV)** [Vogel].
- [Fri 3/4] up to SRM, Cp/UPRE/SURE, AIC/BIC, and start MDL

### Week 9. Ch 11 [SSS] and exam
- [Mon 3/7] MDL, Bootstrap, start Discrepancy principle.
- [Wed 3/9] Review for midterm
- [Fri 3/11] In-class midterm

### Week 10. Ch 11 and 12 [SSS]
- [Mon 3/14] Finish Discrepancy principle; L-curve; cross-validation; GCV; Start ch 12 on Convex learning problems by overview of optimization (e.g., min f(x) = - max -f(x) ... )
