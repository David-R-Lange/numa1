%% Funktion zu Näherung des Integrals der Funktion f auf dem Intervall [a,b] mit n+1 äquidistanten Stützstellen

% Input:    - f :       f(x) Funktion abhängig von x
%           - a, b:     definiert das Intervall [a,b] mit a < b          
%           - n:        Anzahl der Teilintervalle auf [a,b] -> n+1 äquidistante
%                       Stützstellen
%           - method:   string - definiert die Methode, die für die Näherung
%                       verwendet werden soll. Die Möglichkeiten sind:
    %                    - 'midpoint'     : Mittelpunktregel
    %                    - 'trapezoid'    : Trapez-Regel
    %                    - 'simpson'      : Simpson-Regel 

% Output:   Wert I :    Abschätzung für den Wert des Integrales von f in
%                       dem Intervall [a,b] unter Benutzung der jeweils
%                       ausgewählten Methode 

function  I = my_int(f, a, b, n, method)

m = ["midpoint", "trapezoid", "simpson"];

% Wenn die Eingabe nicht mit einer der möglichen Methoden übereinstimmt,
% wird die Berechnung abgebrochen:

if 0 == strcmp(method, m(1:3))
    error('Error - Methode nicht definiert!')
end

% Weitere Überprüfung: Um die numerische Integration durchführen zu können,
% muss a < b gelten:

if a >= b 
    error('Error - Intervall [a,b] nicht definiert!');
end


% Berechnung der Schrittweite:

h = (b-a)/n;

% Erstellen des x-Vektors um die numerische Integration mithilfe eines
% Skalarprodukts zu vereinfachen

X = 0; 
I = 0;

for i = 0:n
    X(i+1) = a + i*h;
end

% Numerische Integration: basierend auf der zuvor ausgewählten Methode
% werden unterschiedliche Berechnungen ausgeführt

% Zunächst: summierte Mittelpunktregel - mit Skalarprodukt wie in Blatt 5
% beschrieben (aus der Schrittweite wird 'künstlich' ein Vektor erstellt)

  if method == "midpoint"

      I = dot_product(h*ones(n,1),f((X(2:n+1)+X(1:n))/2)); 

  end

  % Trapez-Regel - wieder Berechnung mithilfe eines Skalarprodukts

  if method == "trapezoid"
      
      I = dot_product((h/2)*ones(n,1), f(X(2:n+1))+f(X(1:n)));
      
  end

  % Simpson-Regel - wieder Berechnung mithilfe eines Skalarprodukts

  if method == "simpson"
      
      I = dot_product((h/6)*ones(n,1), f(X(1:n))+4*f((X(2:n+1)+X(1:n))/2)+f(X(2:n+1)));
      
  end
      
end