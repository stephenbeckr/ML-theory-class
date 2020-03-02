function ERM = CreateDecisionStumpERM( X, varargin )
% ERM = CreateDecisionStumpERM( X )
%   returns a function handle "ERM", a function of y and w, which
%   then returns the (weighted) ERM solution from the class of decision stumps
% where
%       X is m x d, consisting of m rows of d features
%       y is m x 1, consisting of labels (+1 or -1)
%       w is m x 1, consistent of non-negative weights
%
% and the output of ERM(y,w) is [theta,feature,sgn, valueOfLoss, h]
%   where the prediction on an input x is
%        sign*1  if x(feature) < theta
%       -sign*1  if x(feature) > theta
%   and "h" is a function handle implementing this,
%   and "valueOfLoss" is the (weighted) error rate
%
% If sum(w) = 1, then you can interpret the output "valueOfLoss" as needed
% for boosting algorithms.
%
% Note: this function itself doesn't actually do the training,
%   rather it initializes a training function ERM(y,w)
%   (it does it this way so that one only needs to run the expensive
%    sorting algorithm once).
%
%
% Stephen Becker, Feb 27 2020  stephen.becker@colorado.edu

prs = inputParser;
addParameter(prs,'verbose',false);
parse(prs,varargin{:});
verbose     = prs.Results.verbose;

if verbose, fprintf('Pre-sorting data set X ...'); end
[X,indx]    = sort(X); % Sorts each column (a feature)
if verbose, fprintf(' done!\n'); end
ERM         = @(y,w) trainDecisionStump( X, indx, verbose, y, w);

end



% The actual function

function [bestTheta, bestFeature, bestSign, bestLoss, h] = trainDecisionStump( X, indx, verbose, y, w )
% [theta, feature, sgn, ] = trainDecisionStump( X, indx, verbose, y, w )
% or
% [theta, feature, sgn, valueOfLoss, h] = trainDecisionStump( X, indx, verbose, y, w )
% Returns the (weighted) ERM solution from the class of decision stumps

[m, d]  = size(X);
if nargin < 5 || isempty( w )
    % assume weights are constant
    w   = ones(m,1)/m;
else
    if any( w(:) < 0 )
        error('Weights should be positive (and sum to one, though that does not really matter in some cases)');
    end
end

bestLoss = Inf;
bestFeature = 0;
bestSign    = 0;
bestTheta   = 0;

for feature = 1:d
    
    x           = X(:,feature);
    ww          = w(indx(:,feature));   % need to adjust according to sort
    yy          = y(indx(:,feature));
    pos_label   = (yy>0);   % index of logical variables
    
    if length( unique(x) ) < m
        % There are duplicate. Annoying. Use slow code
        % If you do bootstrap resampling, you're sure to have many
        % duplicates, so we can't just ignore this case.
        if verbose
            fprintf('Feature %3d, need to use slow code since found duplicate values\n', feature );
        end
        
        BreakPoints     = ( x + [x(2:end); x(end)] )/2;
        BreakPoints(end)  = x(end) + 1;
        BreakPoints         = [ x(1) - 1; BreakPoints ];
        
        losses  = zeros(m+1,2); % column 1 is for b=1, column 2 for b=-1
        j   = 1;
        for theta = BreakPoints'
            xLessThanTheta  = ( x < theta );
            badInd = ( xLessThanTheta & ~pos_label ) | ...
                ( ~xLessThanTheta & pos_label );
            losses(j,1)   = sum( ww( badInd ) );
            % and for b=-1
            badInd = ( xLessThanTheta & pos_label ) | ...
                ( ~xLessThanTheta & ~pos_label );
            losses(j,2)   = sum( ww( badInd ) );
            j   = j + 1;
        end
        
        
    else
        % no duplicates, use fast code that relies on "cumsum"
        signedWeights   = ww;
        signedWeights( pos_label ) = - signedWeights( pos_label );

        initialLoss     = [ sum( ww( pos_label ) ), sum( ww( ~pos_label ) ) ];
        losses = [ initialLoss; initialLoss + [cumsum( signedWeights ),cumsum(-signedWeights )] ];
        
    end
    
    % Check to see if this is the best index we've seen so far
    %   (and what the sign should be )
    [minLoss,indices]     = min( losses );
    if min( minLoss ) < bestLoss
        % save this
        if minLoss(1) < minLoss(2)
            j   = indices(1);
            bestSign    = 1;
        else
            j   = indices(2);
            bestSign    = -1;
        end
        if j == 1
            bestTheta   = x(1) - 1;
        elseif j == m+1
            bestTheta   = x(end) + 1;
        else
            bestTheta   = ( x(j-1 ) + x(j) )/2;
        end
        
        bestFeature     = feature;
        bestLoss        = min( minLoss );
    end
    
end

h   = @(X) bestSign*sign( bestTheta - X(:,bestFeature)  );

end % end of subfunction
    