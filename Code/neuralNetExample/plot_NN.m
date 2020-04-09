function plot_NN(  fNN, nGrid, figNo, X, y, a1, a2, center, radius, sqr )
% Plots the output of a 2D neural net, using nGrid points per dimension
%   fNN is a function
%   Also plots circle and square for reference

if nargin < 5, nGrid = 100; end
if nargin < 6, a1 = 2; end
if nargin < 7, a2 = a1; end
if nargin < 8, center = [1,1]; end
if nargin < 9, radius = 0.5; end
if nargin < 10, sqr = [.1,.1,.2,.2]; end

[gridX1,gridX2] = meshgrid( linspace(0,a1,nGrid), linspace(0,a2,nGrid) );
fx              = reshape( fNN( [vec(gridX1)'; vec(gridX2)' ] ), nGrid, nGrid );

figure(figNo); clf;
contourf( gridX1, gridX2, fx, 1 ,'LineWidth',1); % filled
colormap( [1 1 1; 0 1 0; 0 0 1; 1 0 0] )
xlabel('x'); ylabel('y'); 
set(gca,'fontsize',20);
axis square; hold all

if ~isempty(X)
    toBinary = @(pm) (pm+1)/2; % converts plus/minus 1 to [1,0]
    scatter( X(1,:)', X(2,:)',[],toBinary(y)'*[0;1;0]','filled' );
end
if radius > 0
    handle = circle( center(1), center(2), radius); 
    handle.LineWidth = 2;
end
if ~isempty(sqr)
    rectangle( 'Position', sqr ,'linewidth',2)
end

drawnow