function out = times(A,B)
% TIMES  Array multiply for PMAT objects
%
% TIMES(A,B) is the result of A.*B at each point in the combined
% domains of A and B.
%
% See also: times, mtimes.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'times');
