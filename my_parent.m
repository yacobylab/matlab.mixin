classdef my_parent < matlab.mixin.Heterogeneous & hgsetget
    %classdef my_parent < matlab.mixin.Heterogeneous & hgsetget
    %   the parent class inherits from matlab.mixin to allow arrays of
    %   different inherited classes. 
    %   notice that all of the methods loop over the elements in the
    %   instance of the object, which will handle arrays well
    %   also notice that the parent method rand_sum calls the method named
    %   "randfn" for the elements in the class, even though the parent
    %   class has no such method. this means you can't actually have
    %   instances of my_parent.
    %   my_parent also declares the property p3.
    
    properties
        p1;
        p2 = '2';
        p3;
    end
    
    methods
        function mp = my_parent(p1)
           mp.p1 = p1; 
        end
    end
    
    methods (Sealed=true)
        function out = fn(mp)
            out = nan(size(mp));
            for j = 1:length(mp)
                out(j) = str2num(mp(j).p2)+mp(j).p1; 
            end
        end
        function out = rand_sum(mp)
            out = nan(size(mp));
            for j = 1:length(out)
               out(j) = mp(j).randfn;
            end
            out = sum(out);
        end
    end
    
end

