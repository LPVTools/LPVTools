function out = ldivide(A,B)
% LDIVIDE  Left array divide for PMAT objects
%
% LDIVIDE(A,B) is the result of A.\B at each point in the combined
% domains of A and B.
%
% See also: ldivide, rdivide, mrdivide, mldivide.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'ldivide');
