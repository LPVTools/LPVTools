function out = mldivide(A,B)
% MLDIVIDE  Left division for UPFRD objects
%
% MLDIVIDE(A,B) is the result of A\B at each point in the combined
% domains of A and B.
%
% See also: mldivide, mrdivide, mtimes.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'mldivide');

