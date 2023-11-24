%fonction fitness permet d evaluer la population
function [fitness , Couts]=Fitness (Cout_mat,pop)
    %global X;
    %nombre de population et nombre des villes :
    [n_p , n_v] = size(pop);
     
    % initialisation d'u vector couts avec des zeros
    Couts = zeros(1, n_p);
    
    %procedure des calcules des couts
    
    for i=1:n_p
        S = pop(i,:);
        
        for j = 1: (n_v - 1)
            Couts(i) = Couts(i) + Cout_mat(S(j),S(j+1));
        end
        
        Couts(i) = Couts(i) + Cout_mat(S(n_v),S(1));
        
    end
    
    M = max(Couts);
    %X= false;
    fitness = M - Couts;
    %if fitness == zeros(size(fitness))
        %X = true;
    %end    

end