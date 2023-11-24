%fUNCTION DU MUTATON
function [Ind] = do_Mutation(Ind,Pm)
    len = length(Ind);
    for j = 1 : len
        if rand <= Pm
            prev = Ind(j);
            index = randi(len);
            Ind(j) = Ind(index);
            Ind(index) = prev;    
        end
    end
end