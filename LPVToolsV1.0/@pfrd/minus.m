function out = minus(A,B)
% MINUS  Minus for PFRD objects
%
% MINUS(A,B) is the result of A-B at each point in the combined
% domains of A and B.
%
% See also: minus, plus.

% Check # of input arguments
error(nargchk(2, 2, nargin, 'struct'))
out = binop(A,B,'minus');



% ----- OLD CODE


% function out = minus(A,B)
% 
% try
%    out = A + (-B);
% catch
%    error(lasterr);
% end
