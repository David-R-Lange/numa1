%% Funktion zur Polynominterpolation in Monomdarstellung

% Input: vektor x welcher die Stützstellen enthält, sowie einen vektor y,
% welcher die zugehörigen Funktionswerte y(x) zu den gegebenen Stützstellen
% enthält - die Dimension der Vektoren muss übereinstimmen

% Output: Vektor, der Koeffizienten für die Monomdarstellung des
% Interpolationspolynoms enthält. Dieser sollte die gleiche Dimension haben, wie die Eingabevektoren

function a = monom_koeff(stx,stf)

% Die Dimensionen der Eingabevektoren sollen übereinanderstimmen 

n = length(stx);

if n ~= length(stf)
    disp('Error - Dimensionen stimmen nicht überein')
    
    return
end

% Und damit das Lineare Gleichungssystem nicht unterdefiniert ist, 
% muss geprüft werden, ob die Stützstellen in x paarweise verschieden sind
% Dafür wird die Länge des Vektors stx berechnet - 

if n~=length(unique(stx)) % - und mit der Länge des Vektors unique(stx) verglichen. 
                          % Die Funktion unique bildet stx auf einen Vektor
                          % ab, welcher alle Komponenten enthält, die in
                          % stx nur einmal vorkommen.
    disp('Error - Stützstellen sind nicht paarweise verschieden!')
    
    return                % Ist stx länger als unique(stx), wird die Berechnung abgebrochen
end
    
% Um das lineare Gleichungssystem zu lösen, wird die Vandermonde Matrix
% erstellt

V = zeros(n,n);

for i = 1:n
    V(:,i) = stx.^(i-1);
end

% Und schließlich der Koeffizientenvektor a berechnet:

a = V\transpose(stf); 


end
