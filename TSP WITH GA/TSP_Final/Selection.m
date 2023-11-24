% SELECTION ToTal
function [PARENTS] = Selection(fitness,Couts,pop,Taille,n_p_S,P_R)
    r = rand;
    %P_R = 1-P_T = proba d'utiliser la roullet dans chaque iteration
     
    if r <=P_R
        PARENTS = Roulette_selection(fitness,pop,n_p_S);
    else 
        PARENTS = TOURNOI(Couts,pop,Taille,n_p_S);
    end
end
