% generer alleatoirement un list de villes du taille = num 
function [X Y] = Villes_gen(num)
   
   load('CitiesData','Cities');
   X = [];
   Y = [];
   c = table2array(Cities);
   
   
   tmp = zeros(num);
   for i=1:num
       index = 1;
       a = 1;
       while a
          index = randi(26500);
          a = any( index == tmp);
       end
     
       x =str2double( c(index,2));
       y =str2double( c(index,3));
       tmp(i) = index;
       X = [X ; x];
       Y = [Y ; y];
   end
end