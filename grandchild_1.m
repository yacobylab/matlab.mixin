classdef grandchild_1 < child_1
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        %p3 = true;
        p4 = struct('f1',1,'f2',2);
    end
    
    methods
        function mc = grandchild_1(varargin)
           mc = mc@child_1(varargin{:}); 
           mc.p3 = ~mc.p3;
        end
        function print_something(mc)
           fprintf('hello world\n');
           fprintf('property p1 of this instance of class %s = %d\n',class(mc),mc.p1);
           disp(mc.p4);
        end
        function out = randfn(mc)
            out = randi(mc.p4.f1);
        end
    end
    
end

