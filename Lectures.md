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

### Week 3. Bias-Variance / Rademacher complexity etc. [Mohri et al.]
- [Mon 1/24] [Lecture notes 9](Notes/9_BiasVarianceTradeoff.pdf) on Bias-Variance Tradeoff, and half of [Lecture notes 10](Notes/10_Intro_RademacherComplexity.pdf) introducing Rademacher complexity. We follow the Mohri text book for a lot of this.
- [Wed 1/26] Finish Lecture notes 10, then start [Lecture notes 11](11_RademacherComplexity_GeneralizationBound.pdf) on using McDiarmid's inequality to get a generalization bound involving Rademacher complexity
- [Fri 1/28] Finish Lecture notes 11, then start [Lecture notes 12](12_RademacherComplexitySet_CoveringNumbers.pdf) on generalizing Rademacher complexity, tools for calculating it, Massart Lemma, and then covering numbers. We proved a bound on the covering number of a subspace intersectioned with the sphere.

### Week 4. Johnson-Lindenstrauss [course notes, various sources]
- [Mon 1/31] (back in person, no PDF of lecture notes). Johnson-Lindenstrauss lemma, and just barely motivate chaining at the end
- [Wed 2/2] (no school, snow day)
- [Fri 2/4] Some JL chaining (for subspace embedding) from Woodruff, then start Dudley's thm from [SSS]

### Week 5. VC dimension [SSS and Mohri et al.]
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
- [Wed 3/16] More on ch 12 "convex learning problems", discuss optimality, convex vs non-convex, Lipschitz gradient, inequalities, strong convexity. Some unified convergence derivations at [Unified analysis of gradient/subgradient descent](Notes/SubgradientDescent.pdf) (typed pdf notes), though we didn't really cover this until 3/30.  Also [convex inequalities](Notes/Spring2020/ch12_convexInequalities.pdf) (typed pdf notes), but we didn't use this document directly.
- [Fri 3/18] connection to learnability under assumptions (convex/Lipschitz/bounded or convex/smooth/bounded). Start ch 13 on "Regularization and stability", discuss *expected* risk and connections to PAC learning (via Markov's inequality, exercise 13.1)

### Spring break

### Week 11. Ch 13, regularization and stability; ch 14 SGD [SSS]
- [Mon 3/28] Ch 13, regularization, ridge regression. Analysis of the error (focus on part "1", the stability / generalization component). See [stability typed notes](Notes/Spring2020/ch13_stability_article.pdf) pdf.
- [Wed 3/30] Analysis of the error (focus on part "2", expected training error); algorithmic stability (in Mohri) and Bousquet/Eliseef '02 work. Mostly work off the handwritten [ch3 stability part 2](Notes/Spring2020/ch13_stability_part2_OneNote.pdf) nodes PDF.  Start the [Unified analysis of gradient/subgradient descent](Notes/SubgradientDescent.pdf) (typed pdf notes) in preparation for ch 14 on SGD.
- [Fri 4/1] Ch 14 on SGD, mostly following [Unified analysis of gradient/subgradient descent](Notes/SubgradientDescent.pdf).  Then started [ch14 SGD](Notes/Spring2020/ch14_SGD.pdf) notes (handwritten PDF); discuss L1 vs L2 convergence (convergence in mean vs quadratic mean). Discuss Stochastic Approximation (SA) vs Sample Average Approximation (SAA/ERM)

### Week 12. Ch 14 SGD, ch 15 Support Vector Machines (SVM) [SSS]
- [Mon 4/4] More on types of convergence of random variables (almost sure), more formal definition and subtleties. Cover until page 3 of [ch14 SGD](Notes/Spring2020/ch14_SGD.pdf) on L1 convergence of SGD.
- [Wed 4/6] Finish L1 convergence of SGD, then combine to get learning results with SGD (ch 14.5). Start ch 15 on SVM, through page 2 in [ch15_SVM](Notes/Spring2020/ch15_SVM.pdf)
- [Fr 4/8] Finish most of SVM (separable and non-separable cases, implementation via LP or other methods; hard vs soft SVM)

### Week 13. Ch 15 SVM and ch 16 Kernel methods [SSS]
- [Mon 4/11] Finish SVM; start on ch 16 kernel methods, following handwritten notes [ch16_kernels](Notes/Spring2020/ch16_kernels.pdf). Motivation for kernels; the **kernel trick**, example with kernel ridge regression. Derivation via matrix inversion lemma.
- [Wed 4/13] More on kernels, examples of kernels (polynomial, Gaussian, Matern). Kernel-SVM, kernel-ridge regression, kernel-PCA, nearest neighbor, kernel density estimation.
- [Fri 4/15] More on kernels: Thm 16.1 Representer Thm, Lemma 16.2 (simplified Mercer's Thm), Reproducing Kernel Hilbert Spaces (RKHS)

### Week 14. Ch 16 Kernel methods [SSS], and Gaussian Processes [Murphy], and ch 20 Neural Nets [SSS and various sources]
- [Mon 4/18] Finish kernels, going over Random Fourier Features (Recht and Rahimi '07) and Bochner's theorem and the Nystrom method.  Most of my notes followed ch 6 in [SSS] but some from Murphy.  Then start **Gaussian Processes**, mostly following Murphy's textbook and my written notes [Gaussian Processes](Notes/Spring2020/GaussianProcesses.pdf), for classification but mostly for regression.
- [Wed 4/20] More on GPs for regression, Bayesian setup, estimation and forecasting, facts about Gaussians.  Start on ch 20 Neural Networks [ch20_NN_part1_approxError](ch20_NN_part1_approxError.pdf)
- [Fri 4/22] More on approximation error of neural networks; didn't have time to talk about estimation error (generalization) [h20_NN_part2_estimationError](https://github.com/stephenbeckr/ML-theory-class/blob/master/Notes/Spring2020/ch20_NN_part2_estimationError.pdf) nor optimization error [ch20_NN_part3_optimizationError](Notes/Spring2020/ch20_NN_part3_optimizationError.pdf)

### Week 15. Student presentations (in 2.5 lectures)

### What we didn't cover
In 2020, since we were online at the end due to the pandemic, we went faster (prewritten notes) and were able to cover the following (which we didn't get to in 2022):

#### Week XX. Ch 20 [SSS] on artificial Neural Networks
- [Mon 4/6] **Neural nets** description, background and history, discussion of **approximation error** (e.g., universal function approximation, like Stone-Weierstrass style density theorems) for many variants (e.g., L^1 density, density in continuous functions with uniform norm, exact representation of Boolean functions, etc.). Lower bounds on size of networks needed to approximate functions. Some from book, some from recent neural net papers in past 4 years.  Discussion of shortcoming of classical theory, some mention of modern algorithm-dependent approaches. [PDF of notes (handwritten) about neural net *approximation* error](Notes/Spring2020/ch20_NN_part1_approxError.pdf)
- [Wed 4/8] Short lecture on bounding the **VC dimension of neural nets**. Proof for one activation function, results stated for two more activation functions. [PDF of notes (handwritten) about neural net *estimation* error](Notes/Spring2020/ch20_NN_part2_estimationError.pdf)

- [Fr 4/10] Short lecture on the **NP-Hardness of ERM (e.g., training) for neural nets** (no proof), discussion of **SGD** again, except in non-convex case. Introduce **reverse-mode Automatic Differentiation** (at a high-level, no example) and **backpropagation** for neural nets. [PDF of notes (handwritten) about neural net *optimization* error](Notes/Spring2020/ch20_NN_part3_optimizationError.pdf)

- See the [related neural net demo](neuralNetExample/) in Matlab, showing an example of two neural nets for the same problem, both with zero empirical risk, one of them hand-tuned (and has bad generalization error), the other trained via SGD and has much better generalization error.

#### Week XX. Ch 21 [SSS] on Online learning
- [Mon and Wed 4/13 and 4/15] **online learning** for binary classification, discussing the **consistent**, **halving** an **standard optimal algorithm** of Littlestone. Discuss the **Littlestone dimension** and **shattering trees**.  Prove **mistake bounds** and **regret bounds**. [PDF of notes (handwritten) about online classification](Notes/Spring2020/ch21_OnlineLearning_part1_classification.pdf)

- [Fri 4/17] The **doubling trick** and **online-to-batch** conversion.  **Convex online learning** (skip proof, as similar to ch 14), and briefly mention the **perceptron**. See Shalev-Shwartz's 2011 monograph on *Online Learning* for more background. [PDF of notes (handwritten) about doubling/online-to-batch/online-convex](Notes/Spring2020/ch21_OnlineLearning_part2.pdf)

#### Week XX. Reinforcement Learning (from ch 17 [Mohri])
- [Mon 4/20] Introduction to **Reinforcement Learning** (RL) mostly following Mohri, but with examples from [SuttonBarto] and [Puterman]. Give examples: MuJuCo, AlphaGo, Tesauro's backgammon, [Pig dice game](https://en.wikipedia.org/wiki/Pig_(dice_game)). Define **infinite-horizon**, **discounted**, **Markov Decision process (MDP)**, and define the value of a **policy**, and define an optimal policy. Discuss finite-MDP and deterministic policies. [PDF of notes (handwritten) about intro to RL](Notes/Spring2020/ReinforcementLearning_part1.pdf)
- [Wed 4/22] Theoretical background on optimality and **state-action value function Q**, eventually deriving the **Bellman Equations**. [PDF of notes (handwritten) about Bellman Equations](Notes/Spring2020/ReinforcementLearning_part2.pdf)

- [Fri 4/24] (Note: for the next three classes, there are presentations, but still two lectures) **Planning algorithms** (aka **dynamic programming**) including **value iteration** (and variants like Gauss-Seidel), **policy iteration** (and variants, like modified policy iteration), and **linear programming** formulation. [PDF of notes (handwritten) about Planning Algoriths](Notes/Spring2020/ReinforcementLearning_part3.pdf)

#### Week XX, more RL
- [Mon 4/27] Learning algorithms: very short intro on **Stochastic Approximation** as generalization of law of large numbers, and on a **super-Martingale convergence theorem**, then on **Temporal Difference TD(0)** and **Q-learning** algorithms. [PDF of notes (handwritten) about Learning Algorithms](Notes/Spring2020/ReinforcementLearning_part4.pdf)
