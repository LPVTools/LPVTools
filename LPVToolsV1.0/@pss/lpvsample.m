function s = lpvsample(m,Npts,opt)
% LPVSAMPLE   Sample a PSS object
%
% S=LPVSAMPLE(SYS,N) returns N samples of the system SYS. Each sample
% of SYS is generated by evaluating SYS at a randomly chosen point in the 
% domain of SYS. The output S is an array of state-space systems (SS) of 
% size: [size(SYS), N].
%
% S=LPVSAMPLE(SYS,N,OPT) allows the user to specify the sampling algorithm
% to be used. OPT is a CHAR specifies the type of sampling:
%    -'grid': Draws points drawn randomly (possibly with repeats) from 
%         the rectangular grid of SYS.Domain.
%    -'uniform' (default): Draws points uniformly from the hypercube
%         specified by the limits of SYS.Domain.
%    -'LHC': Does a Latin Hypercube sample of the SYS.Domain.
% For 'uniform' and 'LHC', the samples are not, in general, elements
% of the rectangular grid.
% 
%   % EXAMPLE: (CUT/PASTE)
%   % Sample a 1-by-1 PSS object
%   a = pgrid('a',1:5);
%   M = ss(-a,2,4,0);
%   Su = lpvsample(M,15);   % Uniform sample
%   Sg = lpvsample(M,15,'grid');   % Sample from grid
%   bode(Su,'b',Sg,'r')
%   legend('Uniform','Grid','Location','Best')
% 
% See also: lpvsubs, lpvsplit, lpvinterp.

% TODO PJS 4/29/2011: Add a simple example to the function help.

if nargin==2
    opt = 'uniform';
end

szm = size(m);
IVName = m.Domain.IVName;
domsamp = lpvsample(m.Domain,Npts,opt);
% TODO AH - 4/9/14 - Figure out best way to preallocate SS array. In meantime
% use reverse indexing to speed up allocation on the go.
id = repmat({':'},1,numel(szm));
for i=Npts:-1:1
    tmp = lpvinterp(m,IVName,num2cell(domsamp(:,i)));
    s(id{:},i) =  tmp.DataPrivate;
end

