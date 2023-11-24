%function do_croisement
function [enfant1 , enfant2 ]=do_ox(pere,mere)
  
    n_v=length(pere);
    
    c = randsample(n_v-1,2); % Retourner deux point de courpures
    point1=min(c);
    point2=max(c);
    
    enfant1=pere(point1+1:point2);
    [~ , entre_courpure] = ismember(enfant1,mere);
    entre_courpure=sort(entre_courpure);
    enfant1=[pere(1:point1) ,mere(entre_courpure) ,pere(point2+1:end)];
    
        
    enfant2=mere(point1+1:point2);
    [~,entre_courpure1]=ismember(enfant2,pere);
    entre_courpure1=sort(entre_courpure1);
    enfant2=[mere(1:point1), pere(entre_courpure1), mere(point2+1:end)];
   
end

        
    