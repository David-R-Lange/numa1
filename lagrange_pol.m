%% Berechnung des j-ten Lagrangepolynoms an der Stelle x
% Eingabe:
%     j: Auszuwertende Stelle j
%     x: Gegebener Punkt
%     stx:Eingabevektor der restlichen x-Werte
%     
% Ausgabe:
%     pj: j-tes Lagrangepolynom (ausgewertet) an der Stelle x


function pj = lagrange_pol(j,stx,x)
  %Initialisierung von pj
  pj = 1;
  
  %For schleife zur Multiplizierung aller Quotienten der Form x-x_i / x_j - x_i
  for i=1:length(stx)
    if j ~= i
      pj *= (x-stx(i)) / (stx(j) - stx(i));
    end
  end
endfunction
