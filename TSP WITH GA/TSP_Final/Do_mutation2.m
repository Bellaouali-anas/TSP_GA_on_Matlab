function Ind = Do_mutation2(Ind,Pm)
    if rand <= Pm
        point=randsample(length(Ind),2); % deux points de courpures aléatoires
        p1=min(point);                     % premier point de courpure
        p2=max(point);                    % deuxieme point de courpure
        k = Ind(p1:p2);                  % On extrait le partie entre les deux points
        k = fliplr(k);                    % On inverse cette partie
        Ind = [Ind(1:p1-1) ,k ,Ind(p2+1:end) ];
    end
end
