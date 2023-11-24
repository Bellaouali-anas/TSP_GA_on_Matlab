% main tsp function
function [pop,Best_Distances,Best_Chemins]=Main(Cout_mat,n_p,n_i,Ps,P_R,ox,Taille,Pm,il)
    % this main fuction tsp do n_i iteration all the input well be
    % generated from the 1st screen expet the Cout_mat = distace matrice
    % witch have its own function that calculate it from a list of cities
    % with lan and lat 
    
    y = size(Cout_mat);
    n_v = y(1);
    pop = pop_gen(n_p, n_v);
    n_p_S = floor(n_p*Ps);
    
    Best_Chemins = zeros(n_i,n_v);     %Le vecteur dans lequel on stock la meilleure valeur pour chaque iteration
    Best_Distances = zeros(1,n_i);
    dist_moyene = zeros(1,n_i);
    dist_median = zeros(1,n_i);
    im = il;
    for i=1:n_i
        % this is the main génétic logic were all the calculation happen
        [fitness , Couts]=Fitness (Cout_mat,pop);
        [best_distance, best_chemin] = best_Cout(Couts,pop);
        Best_Chemins(i,:) = best_chemin;
        Best_Distances(i) = best_distance;
        dist_moyene(i) = mean(Couts);
        dist_median(i) = median(Couts);
        Parents = Selection(fitness,Couts,pop,Taille,n_p_S,P_R);
        Enfants = croisement(Parents,ox);
        Enfants = Mutation(Enfants,Pm);
        pop = insertion(Enfants,pop,Couts);
        if im == i 
            immigrate_pop = max_illemination(pop,Cout_mat);
            im = im + il ;
            fprintf(' \n IMIGRATION \n');
            pop = immigrate_pop;
        end
        
        % this is the part i want u to deal with i want the 2end page to
        % desplay this results 
        disp(['Generation :  ',num2str(i)]); % number of generation 
        
        disp(['Meilleur Trajet : ',num2str(best_chemin)]); % the best path 
        %that shoulde be ploted on a map on the top left of 2end screen 
        disp(['Distance : ', num2str(best_distance)]); % the best disance in this generation 
        
        
    end
    % att the end of the algo this is the plot that shoul be ploted on the
    % top right of the 2 end screen 
    figure 
    plot([1:n_i],Best_Distances,[1:n_i],dist_moyene,'--',[1:n_i],dist_median);
    xlabel('Generation');
    ylabel('Distance');
     
    
    [best,k] = min(Best_Distances);
    disp(['Meilleur Trajet Trouvé :  ',num2str(Best_Chemins(k,:))]); 
    disp(['Distance : ',num2str(best)]);
end