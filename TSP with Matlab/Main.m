% main tsp function
function [pop,Best_Distances,Best_Chemins,dist_moyene]=Main(Cout_mat,n_p,n_i,Ps,P_R,ox,Taille,Pm,il)
    % declarer x global pour que l'on peut y'accéder depuis la fitness
    %global X;
    % V un table contenet le nom des villes est ses cordonnés
    y = size(Cout_mat);
    n_v = y(1);
    pop = pop_gen(n_p, n_v);
    n_p_S = floor(n_p*Ps);
    
    Best_Chemins = zeros(n_i,n_v);     %Le vecteur dans lequel on stock la meilleure valeur pour chaque iteration
    Best_Distances = zeros(1,n_i);
    dist_moyene = zeros(1,n_i);
    
    im = il;
    for i=1:n_i
        [fitness , Couts]=Fitness (Cout_mat,pop);
        [best_distance, best_chemin] = best_Cout(Couts,pop);
        Best_Chemins(i,:) = best_chemin;
        Best_Distances(i) = best_distance;
        dist_moyene(i) = mean(Couts);
        
        Parents = Selection(fitness,Couts,pop,Taille,n_p_S,P_R);
        Enfants = croisement(Parents,ox);
        Enfants = Mutation(Enfants,Pm);
        pop = insertion(Enfants,pop,Couts);
        if im == i 
            immigrate_pop = max_illemination(pop,Cout_mat);
            im = im + il ;
            %fprintf(' \n IMIGRATION \n');
            pop = immigrate_pop;
        end
        %disp(['Generation :  ',num2str(i)]); 
        %disp(['Meilleur Trajet : ',num2str(best_chemin)]);
        %disp(['Distance : ', num2str(best_distance)]); 
        
       
    end
    %figure 
    %plot([1:n_i],Best_Distances,[1:n_i],dist_moyene);
    %xlabel('Generation');
    %ylabel('Distance');
     
    
    %[best,k] = min(Best_Distances);
    %disp(['Meilleur Trajet Trouvé :  ',num2str(Best_Chemins(k,:))]); 
    %disp(['Distance : ',num2str(best)]);
end
