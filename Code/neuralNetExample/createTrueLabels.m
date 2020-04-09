function [y,gain,activation] = createTrueLabels( X, center, radius, sqr, style )
% y = createTrueLabels( X, center, radius, sqr, style )

y       = sqrt( sum( (X-center).^2 ) ) < radius ;
% Add in a rectangle too:

if ~isempty( sqr )
    y       = y | (    X(1,:)>sqr(1)   &   (X(1,:)<=sqr(1)+sqr(3)) ...
        &   X(2,:)>sqr(2)   &   (X(2,:) <=sqr(2)+sqr(4))     );
end

if strcmpi(style,'sign') || strcmpi(style,'pm1')
    % {+1,-1} and use sign function
    y   = 2*y - 1; % convert to pm1
    gain    = 1;    
    activation  = @(x) sign(x);
elseif strcmpi(style,'sigmoid')
    % {1,0} and use sigmoid function
    gain    = 1e4;  
    activation  = @(x) 1./(1+exp(-x));
else
    error('unrecognized value for "style"')
end