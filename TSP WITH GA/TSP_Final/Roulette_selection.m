%function charger a selecter les induvidu (Roulette) sans repition

function [pop_S] = Roulette_selection(fitness,pop,n_p_S)
    
    %pop : premier population
    %n_p : taille population
    %n_v ;: Nombre des villes
    
    %enregstres les information
    [~,n_v] = size(pop);
    
    %n_p_s : Nombre du population selecté
    
    
    %pop_S : population selecté
    pop_S = zeros(n_p_S,n_v);
    
    %cree un vector des fitness accumelé : fit_acc
    fit_acc = zeros(1,length(fitness));
    s = 0; 
    
    for j=1:length(fitness)
        fit_acc(j) = s + fitness(j);
        s = fit_acc(j);
        
    end
   
    
    
    % prossudure de selection 
    for i=1:n_p_S
        
        %genere un nobre aleatoire entre [min(fit_acc);max(fit_acc)]
        r = (max(fit_acc)-min(fit_acc))*rand() + min(fit_acc); 
        
        %prendre la peremier valeur fit_acc plus grand que r

         
        for j=1:length(fit_acc)
            
            if r <= fit_acc(j)
                 pop_S(i,:) = pop(j,:);
                 break;
            end
        end
    end
 end
    

