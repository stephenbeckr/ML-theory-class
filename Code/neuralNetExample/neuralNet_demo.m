%{
Example to show:

(1) how *training* matters in neural nets, e.g., you can have two
neural nets, both with low or even zero training error, and one does
a good job (will generalize) while the other doesn't.
 This means we need to analyze the algorithm (and starting point)
not just the neural net itself... so VC dimension is NOT the right tool.

(2) how to compute the gradient via back-propagation

Stephen Becker, April 2020
%}

%% Setup the problem (make samples)
rng(1);

% -- setup the X domain --
d   = 2; % dimension
a1  = 2;    % domain is [0,a1] x [0,a2]
a2  = a1;
m   = 1e3;  % number of training examples
% m   = 50;   % better for visualization at first
X   = [a1*rand(1,m); a2*rand(1,m)];
m_test  = 1e4;
X_test  = [a1*rand(1,m_test); a2*rand(1,m_test)];

% -- set up the labels y --
center  = [1;1];
radius  = 0.5;
sqr     = [.1,.1,.2,.2]; % Matlab convention: (x,y,dx,dy)
[y,gain,activation] = createTrueLabels( X, center, radius, sqr, 'sigmoid' );
y_test              = createTrueLabels( X_test, center, radius, sqr, 'sigmoid' );
trainingError       = @(yhat) mean( yhat ~= y );
testingError        = @(yhat) mean( yhat ~= y_test );

% -- useful things --
plotFcn     = @(fNN,nGrid,figNo) plot_NN(  fNN, nGrid,figNo, X, y, a1, a2, center, radius, sqr );
toBinary    = @(pm) (pm+1)/2; % converts plus/minus 1 to [1,0]
vec         = @(X) X(:);      % converts matrix to vector
% These are the examples with a +1 label:
Xpos        = X(:,y==1);
mpos        = size(Xpos,2);

%% -- Start explicit creation of neural net that memorizes --
% We can do this for sign(). Can we do it for sigmoid? Yes
if m < 100
    radiusTriangle = 0.06;
else
%     radiusTriangle  = 0.005; % 0 classification error on test data
    radiusTriangle  = 0.02;
end
wTriangle       = [ 1,-1; -1,-1; 0,1]'; 

% (1) For each point, define its weights (we have duplicates)
% W1 is size (new layer) x (old layer + 1 ), so 3m x (d+1)
b = radiusTriangle - wTriangle'*Xpos;
W1  = gain*[repmat( wTriangle', mpos, 1 ), b(:) ];
% W1(:,1:d)*X + W1(:,d+1)  % each column is a new data point

%{ 
(2) Next layer is of size m x (3m+1), taking conjunction ("and")
  Conjunction of k inputs is sign( 1 - k + sum(inputs) )
  while disjunction ("or") is sign( k - 1 + sum(inputs) ) 
( That was for +/- 1 inputs; need to adjust the 1-k or k-1 offset if we
have {0,1} inputs )
%}
% offset  = 1-3; % for sign() and {-1,+1}
offset  = 1/2-3; % for sigmoid() and {0,1}
% Fancy way to get [1,1,1,0,0,...; 0,0,0,1,1,1,0,0,...; ... ]:
W2      = gain*[ reshape( vec( reshape( repmat(vec(eye(mpos)),1,3), [], 3*mpos )' ), mpos, [] ),  repmat( offset, mpos, 1 ) ];

% (3) Output layer of size 1 x (m+1), taking disjunction ("union")
% offset  = mpos-1; % for sign() and {-1,+1}
offset  = -1/2; % for sigmoid() and {0,1}
W3      = gain*[ ones(1,mpos), offset ]; % this gain is optional

% Put them altogether, with activation function and offsets
applyLayer  = @(W,X) activation( W(:,end) + W(:,1:end-1)*X );
fNN         = @(X) applyLayer( W3, applyLayer( W2, applyLayer( W1, X ) ) );

wMemorized     = [vec(W1);vec(W2);vec(W3)];

% Look at 0-1 loss
fprintf('Hand-created neural-net has %5.2f%% train and %5.2f%% test misclassification rate\n', ...
    100*trainingError( fNN(X) ), 100*testingError(  fNN(X_test) ) );
% (Be careful, this is not *balanced* (cf
% https://en.wikipedia.org/wiki/Evaluation_of_binary_classifiers) 
%    since # of +1 labels is << 50% )

% Plot
plotFcn( fNN, 200, 1 ); title('Hand-crafted memorizing neural net');

%% Now, train neural net via SGD
% Note: I extensively debugged by backProp using a gradient check

% Most of the computation time is spent in evaluating the neural net for plotting
% Note: loss function is 1/m sum (y-yhat)^2, so not same as 0-1 loss

sz      = [ d, 3*mpos, mpos];
fcn     = @(w) evalNN( w, X, y, sz ); % <-- where the real work is hidden

nEdges  = sum(prod( [sz+1; [sz(2:end),1]] ));
w       = 1e2*randn( nEdges, 1 );

maxIts      = 1e5;
printEvery  = 150;
nu          = 1;    % learning rate
t0 = tic; tmPlot = 0;
for k = 1:maxIts
    % -- Sampling --
    ind  = randsample(m,25);    % sample a mini-batch
    %ind = 1:m; % get the full (deterministic) gradient
    fcn     = @(w) evalNN( w, X(:,ind), y(:,ind), sz );
    
    [fx,gradient]     = fcn(w);
    if norm(gradient) > 0
        w   = w - nu*gradient/norm(gradient);  % normalizing gradient is important
    end
    
    % -- Plot and display information (not every iteration) --
    if ~mod(k,printEvery) || k < 20
        t1 = tic;
        fcn     = @(w) evalNN( w, X(:,:), y(:,:), sz );
        fx      = fcn(w);  % full batch
        
        fNN     = evalNN( w, [], [], sz );
        fprintf('Iter %4d, loss %5.3f, ||gradient|| %10.2e, %5.2f%% train and %5.2f%% test misclassification rate\n', ...
            k, fx, norm(gradient), 100*trainingError( round(fNN(X)) ), ...
            100*testingError(  round(fNN(X_test)) ) );
        plotFcn( fNN, 40, 2 ); %title(sprintf('Iter %4d, loss %5.3f', k, fx ) );
        tmPlot = tmPlot + toc(t1);
    end
end
fNN     = evalNN( w, [], [], sz );
tmTotal = toc(t0);
fprintf('Took %.1f seconds (of which %.1f s spent on plotting)\n',tmTotal,tmPlot);
plotFcn( fNN, 100, 2 ) % make nicer plot
title('SGD learned neural net');