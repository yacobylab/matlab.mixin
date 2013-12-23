classdef child_1 < my_parent
    %classdef child_1 < my_parent
    %   child_1 inherits from my parents.
    %   in order to not break things, this must implement a method called
    %   randfn that returns a single value.
    
    properties
        %p3 = false;
    end
    
    methods
        function mc = child_1(varargin)
           mc = mc@my_parent(varargin{:}); 
           mc.p3 = false;
        end
        
        function out = print_something(mc)
           fprintf('property p1 of this instance of class %s = %d\n',class(mc),mc.p1);
           out = true;
        end
        
        function out = randfn(mc)
           out = randi(mc.p1); 
        end
    end
    
end

