%Gruppe 08
%Jean-Luc Brueggemann
%Finja Tadge
%Rene-David Brueggemann
%
%Der Vektor a ist hier so zu definieren, dass das erste Element von a
%der Faktor von x mit dem höchsten Exponenten ist.
%z.B. f(x) = x^3 + 2*x^2 -2x soll ausgewertet werden.
%Dann müsste a = [1, 2, -2, 0]
function p = monom_eval(x, a)
  
  %    Polynomauswertung zu einem gegebenen Koeffizentenvektor in einem Punkt
  %    Eingabeparameter:
  %        a = Koeffizientenvektor
  %        x = auszuwertender Punkt
  %    Rueckgabewert:
  %        p = Funktionswert
  %
  %    Initialisierung der Daten
  exponent = length(a) - 1; %Dies ist der höchste Exponent des Polynoms.
  p = 0;

  %Iterrative For-Schleufe
  for i = a
    %Der Wert von a_i wird mit x hoch korrespondierender Exponent von a_i multipliziert z.B. a_0 * x^3 + ... + a_2 * x^0
    p += i*power(x, exponent--);   %durch 'exponent--' wird der Wert von exponent nach der Operation dekrementiert
  end
end