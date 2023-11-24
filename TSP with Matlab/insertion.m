% Nous complétons la population obtenue par les Opérateurs de croisement et
% de Mutaion, en insérant des individus de la population initiale avec le
% meilleur de cette population 

function pop_f = insertion(Enfants,parents,Couts)
    [n_E,n_v] = size(Enfants);
    [n_P,~] = size(parents);

    pop_f = zeros(n_P,n_v);
    % garder tous les enfants 
    pop_f(1:n_E,:) = Enfants;

    % selecté aleatoiremet les parents que peut servive
    for i= n_E+1 : n_P-1
        r = randi([1 ,n_P]);
        pop_f(i,:) = parents(r,:);
    end
   
    % Garder les meilleur du parents 
    [~,i] = min(Couts);
    pop_f(n_P,:) = parents(i,:);

end
