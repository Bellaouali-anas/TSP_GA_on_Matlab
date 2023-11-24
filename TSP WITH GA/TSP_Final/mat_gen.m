% generer un matrice de distance aleatoir
function [cout_mat] = mat_gen(X,Y)
    n = length(X);
    % unitialisation des matrices des cout eavec des zeros
    cout_mat = zeros([n n])
    for i = 1:n 
        
        for j = i+1:n
            
            cout_mat(i,j) = sphere_distance1 ( X(i), Y(i), X(j), Y(j),6371.01); 
            cout_mat(j,i) = cout_mat(i,j);
            
        end
          
    end
    
end
    