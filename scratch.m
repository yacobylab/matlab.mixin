%% set up a child_1 and a grandchild
c1 = child_1(1); 
c2 = child_2(2); 
gc = grandchild_1(55); 
ar = [c1,gc];
fprintf('ar is of class %s\n',class(ar)); % should return child_1
%% now add a child_2 object
ar(3) = c2;
fprintf('ar is of class %s\n',class(ar)); % will now return parent

%%
% you can call things like
ar(3).randfn; %by itself
% and 
ar(3).rand_sum;
%both work

% or you can do
ar(2,:) = ar(1,:);
fprintf('array ar is of size %d x %d\n', size(ar,1),size(ar,2));
fprintf('ar is of class %s\n',class(ar)); % will still return parent