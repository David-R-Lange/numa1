% per_spline: Wertet den Spline im Vektor x aus
%                   S(x) = sum_{i=-1}^{n+1} sigma_i *B_i(x)
%
% Eingabeparameter:
%
%   x: Vektor mit Punkten in denen ausgewertet werden soll
%   zerl: Zerlegung eines Intervalls [a,b] in n Intervalle [x_i,x_i+1]
%   f: Stützwerte in den Punkten x_i
%
% Rückgabewerte:
%   s: Vektor mit den Werten von S in den x_i

function s = per_spline(x, zerl, f)

% Berechnung der Koeffizienten sigma
sigma   = per_spline_lgs(zerl, f)';

n = length(zerl);
h = (zerl(2)-zerl(1));	
s = zeros(length(x),1);
% Auswertung in [x_i-1,x_i]
for j=1:length(x)
% for-Schleife über Basissplines B_i
    for i=2:n								
% Finde heraus in welchem Teilintervall x(j) ist
        if ((zerl(i-1) <= x(j)) && (x(j) <= zerl(i)))
% Jeder Punkt x liegt im Träger von genau vier basis splines.
% Wenn ein Punkt x in [x_i-1,x_i] liegt braucht man also B_i-2, B_i-1, B_i, B_i+1
% Hier ist aber alles im eins verschoben, daher brauchen wir
% i-1,...,i+2.
          s(j) = sigma(i-1)*1/4*((zerl(i)-x(j))/h)^3;
          s(j) = s(j) + sigma(i)*(3/4*((x(j)-zerl(i-1))/h)^3-3/2*((x(j)-zerl(i-1))/h)^2+1);
          s(j) = s(j) + sigma(i+1)*(3/4*((zerl(i)-x(j))/h)^3-3/2*((zerl(i)-x(j))/h)^2+1);
          s(j) = s(j) + sigma(i+2)*(1/4*((x(j)-zerl(i-1))/h)^3);
        end
    end
end

end
