function out = inv(A)
% INV  Inverse of a PSS objects
%
% INV(A) computes the inverse of A at each point in the domain.
%
% See also: mldivide, mrdivide, mtimes.

% Check # of input arguments
error(nargchk(1, 1, nargin, 'struct'))

out = pss(inv(A.Data),A.Domain);