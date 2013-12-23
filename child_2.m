classdef child_2 < my_parent
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        %p3 = true;
    end
    
    methods
        function mc = child_2(varargin)
           mc = mc@my_parent(varargin{:}); 
           mc.p3 = true;
        end
        function print_something(~)
           fprintf('hello world') 
        end
        function out = randfn(mc)
           out = randi(mc.p1); 
        end
    end
    
end

