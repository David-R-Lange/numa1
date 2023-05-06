%% Berechnung der Tschebyschow-Nullstellen auf dem kompakten Intervall [a,b]
% Eingabe:
%     a:Anfang des Intervalls
%     b:Ende des Intervalls
%     n:n-tes Tschebyschow-Polynom
%
% Ausgabe:
%     tstx: Kalkulierte Tschebyschow-Nullstellen des n-ten Polynoms
function tstx = tscheb_nst(a, b, n)
  %Initialisierung der Tschebyschow-NSt
  tstx = 1;
  x = 1;
  
  for i = 1:n
    % Richtig ist x(i) = -cos( (2*(i-1)+1) / (2*n) * pi );
    % Falsches x(i) = -cos( (2*(i-1)+1) / (2*n+2) * pi );
    
    %Richtiger ist tstx(i) = (b-a)/2 * -cos( (2*(i-1)+1) / (2*n) * pi ) + (b+a)/2 ; zur guten
    %lesbarkeit
    tstx(i) = (b-a)/2 * -cos( (2*(i-1)+1) / (2*n) * pi ) + (b+a)/2 ;
  endfor
endfunction
