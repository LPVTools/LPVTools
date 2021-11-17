function out = mpower(A,B)
% MPOWER   Matrix power for PMAT objects
%
% MPOWER(A,B) is the result of A^B at each point in the combined
% domains of A and B.
%
% See also: mpower, power.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'mpower');
