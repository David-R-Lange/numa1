  %Gruppe 08
%Jean-Luc Brueggemann
%Finja Tadge
%Rene-David Brueggemann
%
% Programmieraufgabe 1.5
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Rene-David Brueggemann, 10040204
%   2. Jean-Luc Brueggemann, 10048805
%   3. Finja Tadge, 10053115
%  
%
% Programmiersprache: Octave/MatLab
% Version: Octave 5.2.0
%
% Liste der eingesendeten Dateien:
%   1. monom_eval.m
%   2. plotting.m
%   3. plt.m
%   4. plt.jpg
%   
% Hier folgt nun das Skript, welches alle Programme zu den Aufgabenteilen
% ausfuehrt. 

%Init
%Funktionsaufruf
%    Plotten von den gegebenen Werten aus 1.5 b)
%    Eingabeparameter:
%        null
%    Rueckgabewert:
%        null
%
%    Initialisierung der Daten
p1 = @(x) monom_eval(x, [1,2,-2,0]);  %'@(x)' definiert das darauffolgende Argument als Funktion wieder. x ist hierbei dann eine Variable, 
p2 = @(x) monom_eval(x, [5,1,-50]);   %welche beim Plotten dann die Werte aus einem gegebenen Intervall annimmt.

%    Plotten der Initialisierten Daten
fplot(p1, [-5, 5]);
hold on;    %Bewirkt, dass beide Plots auf dem selben Grafen gezeichnet werden
fplot(p2, [-5, 5]);

%Beautifying des Plot 
grid on;
xlabel('x');
ylabel('y');
legend('p1','p2');