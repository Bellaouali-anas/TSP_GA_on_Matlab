
%Selection avec Tournoi :
function [Parents] = TOURNOI(Couts,pop,Taille,n_p_S)
    %selection de la population qui fait le tournoi
    % calculer le nobre totals des gangnants 
    % Taille = la taile de chaque tournement 
    [~,n_v] = size(pop);
    Parents = zeros(n_p_S,n_v);
    Winners = zeros(n_p_S,1);
    % grand boocle sur tout la population selectionne 
    for j =1:n_p_S
        T = [];
        % choisir les candidat
        for i = 1:Taille
            r = randi(length(Couts));
            while ismember(r,T)==1
                r = randi(length(Couts));
            end
            T = [T,r];  
        end
        
        winner = Couts(T(1));
        c = T(1);
        % depart du tournemet 
        for i = 2:Taille
            if Couts(T(i)) <= winner
                winner = Couts(T(i));
                c = T(i) ;
            end
        
        end
        Winners(j) = c;
        % Winners un vecteur content les indice des gangnats
    end
    
    for i = 1 : n_p_S
        Parents(i,:) =  pop(Winners(i),:);
    end

end

    
   
   



