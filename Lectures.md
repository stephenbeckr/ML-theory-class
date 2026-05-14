# Day by day lecture schedule, spring 2026
Theoretical Machine Learning (4490/5490) class, Spring 2026, at CU Boulder

Details on what we covered in previous semesters:
- spring 2020 at [Lectures2020.md](Lectures2020.md)
- spring 2022 at [Lectures2022.md](Lectures2022.md)
- spring 2024 at [Lectures2024.md](Lectures2024.md) (1st day of class was Wed Jan 17)

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
- [Fasshauer] is [Kernel-based approximation methods using Matlab](https://www.worldscientific.com/worldscibooks/10.1142/9335) by G Fasshauer and M McCourt (World Scientific, 2015)



### Week 1. Ch 1 [SSS]
- [Fri 1/9/2026] **Introduction**, ch 1 [SSS], parts of ch 1.3 [Mohri]. What is ML, compare to other types of learning, types of learning (supervised, etc.), standard tasks, papaya example, inductive bias and generalization. See [01_Intro](Notes/01_Intro.pdf), partway through [02 More Intro and Terminology](Notes/02_MoreIntro_Terminology.pdf)

### Week 2. Ch 1, 2, 3 [SSS] and Finite Hypothesis Class
- [Mon 1/12/2026] Continue [02 More Intro and Terminology](Notes/02_MoreIntro_Terminology.pdf), start [03 Adding Inductive Bias](Notes/03_AddingInductiveBias.pdf)
- [Wed 1/24/2026] Finish [04 FiniteHypothesisClass and definition of PAC learning](Notes/04_FiniteHypothesisClass_part1.pdf), then the key analysis in [05 Analysis of Finite Hypothesis Class](Notes/05_FiniteHypothesisClass_part2.pdf)
- [Fri 1/16/2026] Finish discussion on agnostic PAC learning in [05 Analysis of Finite Hypothesis Class](Notes/05_FiniteHypothesisClass_part2.pdf), define agnostic PAC learning.
  - Did in class exercise on different notions of convergence for functions (e.g., pointwise, uniform, L^p)
  - Later, we will discuss different types of [convergence of random variables](https://en.wikipedia.org/wiki/Convergence_of_random_variables) (in expectation/L1, vs in probability/measure, vs almost sure). See probability handout on Canvas
  - See also the supplementary notes on [measure-theoretic probability](<Notes/Supplement - measure-theoretic probability cheat sheet.pdf>) which are a reference / cheat-sheet only (no examples nor discussion.) This is standard, so see any measure-theoretic probability, though these notes in particular are taken from Joel Tropp's lectures notes for the class [Probability Theory and Computational Mathematics](https://tropp.caltech.edu/notes/Tro24-Probability-Theory-LN.pdf)
  - Note: [06 StatLearningTerminology.pdf](Notes/06_StatLearningTerminology.pdf) is a cheat-sheet of terminology that may be a helpful reference

### Week 3. Ch 4 [SSS] on uniform convergence

- [Mon 1/19/2026] No class due to MLK Jr holiday

- [Wed 1/21/2026] In-class exercise on [06a Big-O notation.pdf](Notes/06a_Big-Onotation.pdf) (more details at [wikipedia's big-O notation](https://en.wikipedia.org/wiki/Big_O_notation)). Then start [07 Uniform Convergence](Notes/07_UniformConvergence_finiteClass.pdf), going up to Markov's inequality

- [Fri 1/23/2026]  Continue on [07 Uniform Convergence](Notes/07_UniformConvergence_finiteClass.pdf), proving [Hoeffding's inequality](https://en.wikipedia.org/wiki/Hoeffding%27s_inequality)

### Week 4. No Free Lunch / Bias-Variance, Rademacher complexity
- [Mon 1/26/2026] [08 No Free Lunch](Notes/8_NoFreeLunches.pdf) theorem and hence the need for some inductive bias.

- [Wed 1/28/2026] [9 Bias Variance Tradeoff (ch 5)](Notes/9_BiasVarianceTradeoff.pdf), discussing double-descent and the [James-Stein estimator](https://en.wikipedia.org/wiki/James%E2%80%93Stein_estimator). Did an [in-class exercise to prove the James Stein result](Notes/09_extra_JamesStein.pdf)

- [Fri 1/30/2026] [10 Intro to Rademacher Complexity](Notes/10_Intro_RademacherComplexity.pdf) introducing Rademacher complexity. We follow the Mohri text book for a lot of this. In-class exercise on sup of expectations
  - See [Supplemental notes: Commuting operators](Notes/Supplement-CommutingOperators.pdf) for when you can interchange operations like limit and integrals, or sup and inf, etc.

### Week 5. Rademacher complexity etc. [Mohri et al.]



- [Mon 2/2/2026] Finish #10, start [11 Generalization via Rademacher Complexity](Notes/11_RademacherComplexity_GeneralizationBound.pdf) getting to McDiarmid's inequality

- [Wed 2/4/2026] Finish #11, then start [12 More Rademacher, and Covering Numbers](Notes/12_RademacherComplexitySet_CoveringNumbers.pdf).
  - in class exercise: is there a difference between "bounded" and "totally bounded"?
  - Note: we are postponing notes 13 and 14 until after we cover notes 15--17 so that we can cover VC dimension since we'll use it on the homework

- [Fri 2/6/2026] Finish #12 (the covering number part), then start [15 Growth Function](<Notes/15 Growth Function.pdf>). In class exercises

### Week 6. VC dimension [SSS] and [Mohri et al.]

- [Mon 2/9/2026] Finish [15 Growth Function](<Notes/15 Growth Function.pdf>), intro to [16 VC Dimension](<Notes/16 VC dimension.pdf>) and in-class exercises

- [Wed 2/11/2026] More on notes #16, in-class exercises on VC dimension

- [Fri 2/13/2026] Finish #16, and cover [17 Fundamental Theorem of ML](<Notes/17 Fundamental Thm of ML.pdf>). In class exercises on VC dimension.

### Week 7. Chaining and Johnson Lindenstrauss

- [Mon 2/16/2026] Start [13 (Aside) Dudley's Chaining](<Notes/13 (Aside) Dudleys Chaining.pdf>). We didn't cover this in 2024, but we're covering it in 2026. More details on the full stochastic process version are in in Wainwright 5.3.3, Tropp's ACM 217 notes, or Vershynin's chapter 8.
  - in class exercise: if set A is the unit ball and B is a given rectangle, what's the Minkowski sum A+B?

- [Wed 2/18/2026] Finished [13 (Aside) Dudley's Chaining](<Notes/13 (Aside) Dudleys Chaining.pdf>).
  - in class exercise: if X is uniform[0,1] and Y is uniform[10,15] and X and Y are independent, then what's the distribution of X + Y? And is this the same as the distribution that adds the PDFs together (and scales by 1/2)?  i.e., mixture model vs additive model/convolution.

- [Fri 2/20/2026] [14 (Aside) Johnson-Lindenstrauss](<Notes/14 (Aside) Johnson-Lindenstrauss.pdf>).
  - in class exercise: show that the sum of normal r.v. is still normal (without doing any integrals).  *Solution sketch: use the MGF, or the characteristic function, or the Fourier Transform.*

### Week 8. ch 9 of [SSS] on linear predictors

- [Mon 2/23/2026] Finish #14 on chaining argument for subspace; start [18 Linear Predictors (part 1 classification)](<Notes/18 Linear Predictors (part 1 classification).pdf>), cover binary predictors, introduce linear programs and discuss their complexity. Discuss ERM of binary classification (tractable iff separable).

- [Wed 2/25/2026] Finish #18 (Perceptron), start [19 Linear Predictors (part 2 regression)](<Notes/19 Linear Predictors (part 2 regression).pdf>). We spent the last 30 min on laptops doing the [Least Squares Programming Challenge](Code/LeastSquaresChallenge.ipynb) (solutions are on the Solutions branch of the git repo; see [`LeastSquaresChallenge_soln.ipynb`](https://github.com/stephenbeckr/ML-theory-class/blob/solutions/Code/LeastSquaresChallenge_soln.ipynb)

- [Fri 2/27/2026] Finish #19, going over the ERM methods and then discussing pseudo-dimension.


### Week 9. Linear predictors, ch 10 of [SSS] on boosting

- [Mon 3/2/2026] Cover [20 Linear Predictors (part 3 logistic regression).pdf](<Notes/20 Linear Predictors (part 3 logistic regression).pdf>). Logistic regression and GLM; derive loss function based on maximum likelihood; discuss log-sum-exp trick (e.g., `numpy.logaddexp` and `numpy.log1p`). Start [21 Boosting.pdf](<Notes/21 Boosting.pdf>). gamma-weak-learners, motivate need for boosting; example with 3-piece classifier and decision stump (10.1 in SS), and complexity of computing ERM of decision stumps.

- [Wed 3/5/2026] Finish [21 Boosting.pdf](<Notes/21 Boosting.pdf>). Continue on #21, complexity of sorting, top-k problems, median finding, shuffling (Fisher-Yates-Knuth shuffle). Comparison to Bootstrap and Bagging.

- [Fri 3/6/2026] Cover [22 AdaBoost.pdf](<Notes/22 AdaBoost.pdf>), analysis of training error convergence.

### Week 10. Midterm and start model selection/validation (ch 11 of [SSS])

- [Mon 3/9/2026] [Midterm review](MidtermReview.pdf)

- [Wed 3/11/2026] In-class Midterm

- [Fri 3/13/2026] Start [#23 Model Selection and Validation](<Notes/23 Model Selection and Validation.pdf>). Presented these notes on the computer (not chalkboard) to make it go faster.

### Spring Break

### Week 11. Model Selection, ch 11 of [SSS]; start optimization (ch 12 [SsS])

- [Mon 3/23/26] Finish [#23 Model Selection and Validation](<Notes/23 Model Selection and Validation.pdf>) by covering Stein's SURE; cover [#24 More Model Selection and Validation](<Notes/24 More Model Selection and Validation.pdf>); start [#25 More Model Selection and Validation](<Notes/25 Even More Model Selection %28Bootstrap, CV, GCV%29.pdf>).
Overall topics for the model selection lectures:
  1. Structured Risk Minimization (SRM). Ref: [SSS]
  2. Validation set (the test/train/validation split), Bonferroni correction
  3. Mallow's C_p / Unbiased Predictive Risk Estimate (UPRE); and Stein's Unbiased Risk Estimate (SURE)
  4. AIC and BIC, loosely based on Hastie et al.
  5. Adjusted R^2 / coefficient of determination
  6. Minimum Description Length (ref: 7.8 Hastie et al. and Grunwald tutorial), coding theory, Kolmogorov complexity, minimum message length. See [A tutorial introduction to the minimum description length principle](https://arxiv.org/abs/math/0406077) (Peter Grunwald, 2004).
  7. Morozov Discrepancy Principle (ref: 7.3 Vogel)
  8. "L-curve" method (like elbow method), ref Vogel
  9. Bootstrap resampling (ref: 7.11 Hastie et al.)
  10. Cross-validation, loosely following Hastie et al.
  11. Generalized CV (GCV), Sherman-Morrison-Woodbury / matrix inversion lemma, Neumann series. Ref: Vogel.

- [Wed 3/25/2026] Finish [#25 More Model Selection and Validation](<Notes/25 Even More Model Selection %28Bootstrap, CV, GCV%29.pdf>).

- [Fri 3/27/2026] Start [#26 Convex Learning Problems](<Notes/26 Convex Learning Problems.pdf>) on convex optimization

### Week 12. Optimization (ch 12, 13 [SSS])

- [Mon 3/30/2026] No class due to travel

- [Wed 4/1/2026] No class due to travel delays

- [Fri 4/3/2026] Almost finish [#26 Convex Learning Problems](<Notes/26 Convex Learning Problems.pdf>)]
  - We're skipping [Spring2020/ch12_convexInequalities](<Notes/Spring2020/ch12_convexInequalities.pdf>)

### Week 13. Optimization and Algorithmic Stability (ch 12, 13, 14 [SSS] ) 

- [Mon 4/6/2026] Finish [#26 Convex Learning Problems](<Notes/26 Convex Learning Problems.pdf>)], start [#27 Regularization And Stability part1](Notes/27_RegularizationAndStability_part1.pdf)

- [Wed 4/8/2026] Finish [#27 Regularization And Stability part1](Notes/27_RegularizationAndStability_part1.pdf), then cover [#28 Regularization And Stability part2](Notes/28_RegularizationAndStability_part2.pdf)

- [Fri 4/10/2026] SGD and gradient descent
  - [Unified analysis of gradient/subgradient descent](Notes/SubgradientDescent.pdf) typed notes, covering Lemma 1 in detail, the others briefly
  - Types of convergence; Discuss L1 vs L2 convergence (convergence in mean vs quadratic mean), almost sure convergence, etc. References: the "Probability theory "Cliff's Notes"" in Canvas; or see Week 2, the discussion around notes #5, including [measure-theoretic probability](<Notes/Supplement - measure-theoretic probability cheat sheet.pdf>) notes.
  - We also have the [Random variables convergence worksheet](<29d SGD - Random Variable Convergence Worksheet.pdf>) for in-class exercises (in 2026, we didn't follow this exactly)
  - Start some of [#29 ch14 SGD](Notes/Spring2020/ch14_SGD.pdf) (L1 convergence proof of SGD). Discuss Stochastic Approximation (SA) vs Sample Average Approximation (SAA/ERM)

### Week 14. Ch 14 and 15 (SVM) in [SSS]

- [Mon 4/13/2026] More on [#29 ch14 SGD](Notes/Spring2020/ch14_SGD.pdf)

- [Wed 4/15/2026] Finish [#29 ch14 SGD](Notes/Spring2020/ch14_SGD.pdf). 
Discuss [SGD - when you can commute expectation and gradient](<Notes/SGD - commuting gradient and expectation.pdf>)   2026 update: see pages 2 and 3 of [Supplement - Commuting operators](Notes/Supplement-CommutingOperators.pdf)

- [Fri 4/17/2026] Cover [#30 ch15 SVM](Notes/30_SVM.pdf) (separable and non-separable cases, hard vs soft SVM, analysis without dimension dependence). Also do Lagrange multiplier exercise

### Week 15. Kernel methods, ch 16 in [SSS]

- [Mon 4/20/2026] [#30 ch16 kernels](Notes/31_KernelMethods.pdf). Motivation for kernels; the **kernel trick**, example with kernel ridge regression. Derivation via matrix inversion lemma. Examples of kernels (polynomial, Gaussian, Matern). Kernel-SVM, kernel-ridge regression, kernel-PCA, nearest neighbor, kernel density estimation. Thm 16.1 Representer Thm, Lemma 16.2 (simplified Mercer's Thm), Reproducing Kernel Hilbert Spaces (RKHS). Random Fourier Features (Recht and Rahimi '07) and Bochner's theorem and the Nystrom method.
  - Refs: mostly ch 16 in [SSS] but also some from [Murphy] and some from [Fasshauer].

- [Wed 4/22/2026] more on [#30 ch16 kernels](Notes/31_KernelMethods.pdf)

- [Fri 4/24/2026] more on [#30 ch16 kernels](Notes/31_KernelMethods.pdf). Last day of class

Note: unlike 2022 and 2020, in 2024 and 2026 we'll have project presentations during our 3 hour final exam slot, freeing up an extra 3 days of lecture



## Optional content if we have time
In 2020, since we were online at the end due to the pandemic, we went faster (prewritten notes) and were able to cover the following (which we didn't get to in 2022 or 2024 or 2026):

#### Gaussian Processes [Murphy]
- in all years but 2026 we covered [Gaussian Processes](Notes/Spring2020/GaussianProcesses.pdf) on GPs for regression, Bayesian setup, estimation and forecasting, facts about Gaussians


#### Ch 20 Neural Nets [SSS and various sources]
- Start on ch 20 Neural Networks [ch20_NN_part1_approxError](ch20_NN_part1_approxError.pdf)
- More on approximation error of neural networks; didn't have time to talk about estimation error (generalization) [ch20_NN_part2_estimationError](https://github.com/stephenbeckr/ML-theory-class/blob/master/Notes/Spring2020/ch20_NN_part2_estimationError.pdf) nor optimization error [ch20_NN_part3_optimizationError](Notes/Spring2020/ch20_NN_part3_optimizationError.pdf)

- **Neural nets** description, background and history, discussion of **approximation error** (e.g., universal function approximation, like Stone-Weierstrass style density theorems) for many variants (e.g., L^1 density, density in continuous functions with uniform norm, exact representation of Boolean functions, etc.). Lower bounds on size of networks needed to approximate functions. Some from book, some from recent neural net papers in past 4 years.  Discussion of shortcoming of classical theory, some mention of modern algorithm-dependent approaches. [PDF of notes (handwritten) about neural net *approximation* error](Notes/Spring2020/ch20_NN_part1_approxError.pdf)
- Short lecture on bounding the **VC dimension of neural nets**. Proof for one activation function, results stated for two more activation functions. [PDF of notes (handwritten) about neural net *estimation* error](Notes/Spring2020/ch20_NN_part2_estimationError.pdf)

- Short lecture on the **NP-Hardness of ERM (e.g., training) for neural nets** (no proof), discussion of **SGD** again, except in non-convex case. Introduce **reverse-mode Automatic Differentiation** (at a high-level, no example) and **backpropagation** for neural nets. [PDF of notes (handwritten) about neural net *optimization* error](Notes/Spring2020/ch20_NN_part3_optimizationError.pdf)

- See the [related neural net demo](neuralNetExample/) in Matlab, showing an example of two neural nets for the same problem, both with zero empirical risk, one of them hand-tuned (and has bad generalization error), the other trained via SGD and has much better generalization error.

#### Ch 21 [SSS] on Online learning
- **online learning** for binary classification, discussing the **consistent**, **halving** an **standard optimal algorithm** of Littlestone. Discuss the **Littlestone dimension** and **shattering trees**.  Prove **mistake bounds** and **regret bounds**. [PDF of notes (handwritten) about online classification](Notes/Spring2020/ch21_OnlineLearning_part1_classification.pdf)

- The **doubling trick** and **online-to-batch** conversion.  **Convex online learning** (skip proof, as similar to ch 14), and briefly mention the **perceptron**. See Shalev-Shwartz's 2011 monograph on *Online Learning* for more background. [PDF of notes (handwritten) about doubling/online-to-batch/online-convex](Notes/Spring2020/ch21_OnlineLearning_part2.pdf)

#### Reinforcement Learning (from ch 17 [Mohri])
- Introduction to **Reinforcement Learning** (RL) mostly following Mohri, but with examples from [SuttonBarto] and [Puterman]. Give examples: MuJuCo, AlphaGo, Tesauro's backgammon, [Pig dice game](https://en.wikipedia.org/wiki/Pig_(dice_game)). Define **infinite-horizon**, **discounted**, **Markov Decision process (MDP)**, and define the value of a **policy**, and define an optimal policy. Discuss finite-MDP and deterministic policies. [PDF of notes (handwritten) about intro to RL](Notes/Spring2020/ReinforcementLearning_part1.pdf)
- Theoretical background on optimality and **state-action value function Q**, eventually deriving the **Bellman Equations**. [PDF of notes (handwritten) about Bellman Equations](Notes/Spring2020/ReinforcementLearning_part2.pdf)

- (Note: for the next three classes, there are presentations, but still two lectures) **Planning algorithms** (aka **dynamic programming**) including **value iteration** (and variants like Gauss-Seidel), **policy iteration** (and variants, like modified policy iteration), and **linear programming** formulation. [PDF of notes (handwritten) about Planning Algoriths](Notes/Spring2020/ReinforcementLearning_part3.pdf)

- Learning algorithms: very short intro on **Stochastic Approximation** as generalization of law of large numbers, and on a **super-Martingale convergence theorem**, then on **Temporal Difference TD(0)** and **Q-learning** algorithms. [PDF of notes (handwritten) about Learning Algorithms](Notes/Spring2020/ReinforcementLearning_part4.pdf)

*NOTE* in 2024, Ashutosh Trivedi is teaching a special topics course on Reinforcement Learning in the CS dept (CSCI 4831/7000)



## What we hope to cover in a typical course
(high-level)

**Classical Statistical Learning Theory** We mainly focus on supervised statistical batch learning with a passive learner.

1. Ch 1: Intro to class: what is it about?
2. Ch 2: Formal models (statistical learning), Empirical Risk Minimization (ERM), finite hypothesis class
3. Ch 3: Formal Learning model: Probably-Almost-Correct (PAC)
4. Ch 4: Learning via Uniform Convergence (and concentration inequalities, cf Appendix B and Vershynin)
5. Ch 5: Bias-Complexity Tradeoff, double-descent, no-free-lunch theorems
6. Ch 6: VC-Dimension
7. Ch 26: Rademacher Complexity (and ch 3.1 in Mohri)
8. Ch 27: Covering Numbers

**Analysis of Algorithms** As time permits, we will analyze standard algorithms.

1. Ch 9: Linear predictors
2. Ch 10: Boosting, AdaBoost
3. Ch 11: Model selection and validation
4. Ch 12: Convex learning problems (generalization bounds)
5. Ch 13: Regularization and Stability
6. Ch 15: Support Vector Machines (SVM)
7. Ch 16: Kernel methods
8. Ch 20: Neural Networks, expressive power, and new results about deep networks (2017–now)

<a name="additional"></a>**Additional Topics** We will cover these as we have time (which we probably won't)

1. Ch 21: Online Learning
2. Reinforcement learning (ch 17 in Mohri)
3. Background on Information Theory (Appendix E in Mohri)
4. Max Entropy (ch 12 in Mohri)
5. Ch 22: Clustering (K-means, spectral clustering, information bottleneck)
    - Probabilistic analysis a la [Arthur and Vassilvitskii's Kmeans++](https://theory.stanford.edu/~sergei/papers/kMeansPP-soda.pdf)
6. Ch 7: Nonuniform Learnability
7. Computational Complexity models (Turing Machines; see Scott Aaronson book)
8. Ch 8: Computational Complexity of learning
9. Ch 14: Stochastic Gradient Descent (*edit*: we usually cover this at least partially)
10. More stats, e.g., Expectation Maximization
10. Variational Inference, ELBO
11. Information Theory, information bottleneck
11. Generative Models (GANS, Variational AutoEncoders, Diffusion Models)
12. Equivariance and Invariance results; group theory
13. Kernel methods in more detail; RKHS
10. Recent papers from the literature

**Skills** we hope students develop
- Statistics
  - More comfort with multivariate random variables, e.g., multivariate Gaussian
  - Convergence of random variables
  - Concentration inequalities
  - When is E[ gradient f] = gradient E[ f ], etc.
  - Cross-validation and regularization techniques; bootstrap
  - Intro to chaining techniques
- Basic analysis
  - Lots of inequalities
  - Comfort with function classes, function spaces
  - Comfort with kernel methods
- Basic optimization theory
  - and basic stochastic processes, either algorithmic or Gaussian Processes
- Some discrete math
  - VC dimension calculations
