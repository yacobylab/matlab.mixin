%% 
clear all
foo = my_inst;
ind = chan_names.chan2;
disp(ind); % diplays chan2, looks like a string
fprintf('class of ind is %s\n',class(ind));
%% you can also turn it into other datatypes
fprintf('%i\n',int16(ind)); % in fact, you can cast into other ints too
fprintf('%s\n', char(ind)); % displays 'chan2';

%% now the fun stuff, referencing channels

foo.channels(ind).get()