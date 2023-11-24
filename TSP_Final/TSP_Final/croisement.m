


%function croisement TOTAL
function [Enfants]=croisement(pop,ox)
   X = size(pop);
   %T : table d indice
   T = [];
   
   Enfants = [];
   %boocles sur la moitié du population
   for n = 1:floor(X(1)/2)
        %choisir l idice de pere
        i = randi(X(1));
        %eviter la repetition des pere 
        while ismember(i,T)==1
            i = randi(X(1));   
        end
        
        T = [T;i];
        % meme procedure pour la mere
        j = randi(X(1));
        while ismember(j,T)==1
            j = randi(X(1));
        end
        T = [T;j];
  
        %choisir aleatoirement le type de croisement a appliqué
        r = rand;
        % croisement OX
        if r <= ox 
            [enfant1 , enfant2 ]=do_ox(pop(i,:),pop(j,:));

        %croisement PMX
        else
            [enfant1 ,  enfant2] = pmx(pop(i,:),pop(j,:));
        end
        Enfants = [Enfants;[enfant1;enfant2]];
   end
end

