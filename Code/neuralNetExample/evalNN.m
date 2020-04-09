function [fx,grad] = evalNN( w, X, y, sizes )
% [fx,grad] = evalNN( w, X, y, sizes )
% the weights are vectorized and are converted to the right size
%   using the "sizes" input, which is a list of the size of each
%   layer (so length(sizes) = total # of layers, including input and
%   output).  Assumes output layer is size 1, and fully-connected
%   layers (with constant output neurons too)
% Stephen Becker, April 2020

% activation  = @(x) sign(x);

activation  = @(x) 1./(1+exp(-x));  % sigmoid activation
% dactivation = @(x) 1./( (1+exp(x)).*(1+exp(-x)) );    % derivative
% dactivation = @(x) activation(x).*activation(-x);
dactivation = @(x) 1./( 2 + exp(x) + exp(-x) );
y           = y(:)'; % make sure it is a row vector
loss        = @(yhat) norm(yhat-y)^2/(2*length(y));
dloss       = @(yhat) yhat/length(y); % derivative



start = 0;
T   = length(sizes);
W   = cell( T,1 );
b   = cell( T,1 ); % constant offsets

for t = 1:T
    szIn    = sizes(t)+1; % include constant neuron
    if t==length(sizes)
        szOut   = 1;
    else
        szOut = sizes(t+1);
    end
    
    ww  = w( start + 1 : start + szIn*szOut );
    start   = start + szIn*szOut; % for next loop

    WW          = reshape( ww, szOut, szIn );
    W{t}    = WW(:,1:end-1);
    b{t}    = WW(:,end);
    
end

if isempty(X)
    % don't compute loss, rather, return a function
    fx  = @(x) activation( W{1}*x + b{1} );
    for t = 2:T
        fx  = @(x) activation( W{t}*fx(x) + b{t} );
    end
    grad    = W; % for debugging
    return;
end



%
% 
% fNN = @(X) applyLayer( W3, applyLayer( W2, applyLayer( W1, X ) ) );

% Forward pass, so start from first layer. Use book's notation in
% Backpropagation section.
o       = cell( T + 1, 1 ); % includes input
a       = cell( T + 0, 1 );
o{1}   = X;
for t = 1:T
    a{t+1}  = W{t}*o{t} + b{t};
    o{t+1}  = activation( a{t+1} );
end
yHat  = o{end};

% Now, apply loss function
fx  = loss( yHat);

% If gradient requested, do backward pass for BackProp
if nargout > 1
    m       = size(X,2);
    delta   = dloss(yHat - y);     % assuming square loss
    g       = cell(T,1);
    for t = T:-1:2
        tmp     = delta.*dactivation(a{t+1});
        % Get the gradient out of this. Need to remove the columns (sum over)
        g{t}    = [o{t};ones(1,m)]*tmp';
        
        delta  = W{t}'*( tmp );
    end
    t = 1;
    tmp     = delta.*dactivation(a{t+1});
    g{t}    = [o{t};ones(1,m)]*tmp';

    
    % Note: g is transposed, so transpose back
    % Now, put g into the same vectorized format as w is
    grad = [];
    for t = 1:T
        grad   = [ grad; vec( g{t}') ];
    end
end