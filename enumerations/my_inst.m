classdef my_inst < sminst
    %classdef my_inst < sminst
    %   a trivial instrument with 4 channels
    
    properties
    end
    
    methods
        function obj = my_inst
           obj.inst =1;
           obj.channels = sminstchan(obj,[],@(o)fprintf('value of channel 1 = %d\n',o.val));
           obj.channels.name = 'chan1';
           obj.channels(2) = sminstchan(obj,[],@(o)fprintf('value of channel 2 = %d\n',o.val));
           obj.channels(2).name = 'chan2';
           obj.channels(3) = sminstchan(obj,[],@(o)fprintf('value of channel 3 = %d\n',o.val));
           obj.channels(3).name = 'chan3';
           obj.channels(4) = sminstchan(obj,[],@(o)fprintf('value of channel 4 = %d\n',o.val));
           obj.channels(4).name = 'chan4';
        end
    end
    
end

