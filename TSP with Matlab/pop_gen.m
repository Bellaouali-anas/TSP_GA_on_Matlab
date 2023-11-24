% fonction d'initialisation 
function pop = pop_gen(n_p,n_v)
    %unitialistation du vector
    s = [];
    
    % overir une boucle sur la taille du population souhaité 
    for i = 1:n_p
        
        % unitialisation des chromosomes
        tmpchrom_nul = zeros([1 n_v]);
        tmpchrom = [1 :n_v];
        
        % Generation des villes aleatoires 
        for j = 1:n_v
            
            %generation d'un nombre aleatoire
            indice = randi([1 (n_v+1)-j]);
            tmpchrom_nul(j) = tmpchrom (indice);
            tmpchrom (:,indice) = [] ;
        end
        s = [s;tmpchrom_nul];
    end
    pop = s ;
end