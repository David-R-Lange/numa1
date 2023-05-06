function sp=dot_product(x,y)
  %
  %  Berechnung des Skalarproduktes zweier Vektoren
  %
  %    Eingabeparameter:
  %        x: Vektor
  %        y: Vektor
  %    Rueckgabewerte:
  %        sp: Skalarprodukt (x^Ty)
  
  %    Initialisierung Daten
  n = length(x);
  m = length(y);
  sp = 0;
  if n==m
    %Skalarprodukt
    for i = 1:n
      sp = sp + x(i)*y(i);
    endfor
  else
    %Abbruch
    fprintf('Dimension der Vektoren nicht gleich \n');
  endif
endfunction
