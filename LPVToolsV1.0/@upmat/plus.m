function out = plus(A,B)
% PLUS  Plus for UPMAT objects
%
% PLUS(A,B) is the result of A+B at each point in the combined
% domains of A and B. 
%
% See also: plus.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'plus');


