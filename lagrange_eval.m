%% Berechnung des Interpolationspolynom in Lagrange-Darstellung mithilfe der Lagrange-Basis l_i
% Eingabe:
%     x: Auszuwertender Punkt
%     stx: Eingabevektor der Stuetzstellen
%     stf: Eingabevektor der Stuetzwerte
%
% Ausgabe:
%     p: Funktionswert an der Stelle x ausgewertet

function p = lagrange_eval(stx, stf, x)
  %Initialisierung der Werte n und p
  n = length(stx);
  p = 0;
  
  %For-Schleife zur Aufsummierung von den Stuetzwerten und den Lagrangepolynom an i-ter Stelle
  for i = 1:n
    p += stf(i) * lagrange_pol(i,stx,x);
  end
endfunction
