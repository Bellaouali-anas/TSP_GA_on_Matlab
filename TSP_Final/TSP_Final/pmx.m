% croisement avec la method pmx
function [ child1 , child2 ] = pmx(parent1 , parent2) 
    copure1 = randi(length(parent1));
    copure2 = randi(length(parent1));
    while copure2 == copure1
        copure2 = randi(length(parent2));
    end
   
    child1 = zeros(size(parent1));
    child2 = zeros(size(parent2));
    %taille de copure 
    % premiere phase du croisement bpmx 
    child1(min(copure1,copure2)+1:max(copure1,copure2)) = parent2(min(copure1,copure2)+1:max(copure1,copure2));
    child2(min(copure1,copure2)+1:max(copure1,copure2)) = parent1(min(copure1,copure2)+1:max(copure1,copure2));
    missing1 = [];
    missing2 = [];
   
    %deuxieme 
    for i = 1:length(parent1)
       %table existence d un element du parent dans o  o qui designe enfant
       txo1 = ismember(parent1(i),child1);
       txo2 = ismember(parent2(i), child2);
       txo3 = ismember(parent2(i),child1);
       txo4 = ismember(parent1(i),child2);
       if txo2 == 0

           %on  s assure que seul les valeur qui on zero sont modier
           %one peut faire de meme change en changeant les atre de la
           %boucle
           if (child2(i) == 0)
                child2(i)=parent2(i);
           end
       else
           if txo3 ==0
                missing2 = [ missing2 ; [i , parent2(i)]];
           end
       end
       if txo1 == 0
           if (child1(i)==0)
               child1(i)=parent1(i);
           end
          
       else
           if txo4 ==0
           
               missing1 = [ missing1 ; [i , parent1(i)]];
           end
           
       end
    end
   
  
    [X Y]=size(missing2);   
    for i=1:X   
        b =missing2(i,2);
        a = missing1(i,2);
        boola = true;
        boolb = true;
        while boolb
        
            for j=min(copure1,copure2)+1:max(copure1,copure2)
                if b==child2(j)
                    b=child1(j);
                    %condition d arrete
                    boolb = true;
                    break
                end
                boolb = false;
                child2(missing2(i,1)) = b; 
            end
       
        end
        while boola
        
            for j=min(copure1,copure2)+1:max(copure1,copure2)
                if b==child1(j)
                    b=child2(j);
                    %condition d arrete
                    boola = true;
                    break
                end
                boola = false;
                child1(missing1(i,1)) = b; 
            end
       
        end
   
    end
end
 
 
