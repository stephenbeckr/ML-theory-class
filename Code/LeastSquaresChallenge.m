%{
APPM 4490/5490 Theory of ML, Prof. Becker

The simplest machine learning problem is linear regression. Think you know
how to do it well?

Below are two least-squares challenges, one with a nearly square matric, 
the other with a very tall matrix. We've constructed the problem so that 
we know what the answer is (the all ones vector). Your job is to find 
the right answer such that:

- you have at least 10 digits of accuracy, e.g.,
        norm(xhat-xTrue,Inf)<=1e-10

- you find the solution quickly, e.g., in under 10 seconds

%}
%% Problem 1
rng(1);
n   = 5e3;
m   = n+1;
A   = randn(m,n);
xTrue   = ones(n,1);
b   = A*xTrue;

%% Problem 2
rng(1);
n   = 2e3;
n2  = n/2;
m   = 1e4;
A   = randn(m,n2);
A   = [A, A + 1e-4*randn(m,n2)];
xTrue   = ones(n,1);
b   = A*xTrue;

%% Solution methods

tic;
x   = ... (FILL IN YOUR CODE HERE)
toc
norm(x-xTrue,Inf)
