% cette etape est pour but de ileminé le plus long chemin
function pop = max_illemination(pop_f, Cout_mat)

[n_p,n_v] = size(pop_f);
[fitness , ~] = Fitness (Cout_mat,pop_f);

for i=1:floor(n_p/2)

    [~,j] = min(fitness);
    
pop_f(j,:) = randperm(n_v);
    
fitness(j) = 0; %pour conserver l'ordre des chromosomes
end
pop = pop_f;
end