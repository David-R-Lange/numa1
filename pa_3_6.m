% Programmieraufgabe 3.6
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1.Finja Tadge, 10053115
%   2.Jean-Luc Brueggemann, 10048805
%   3.Rene-David Brueggemann, 10040204
%
% Programmiersprache: Octave
% Version: 5.2.0
%
% Liste der eingesendeten Dateien:
%   1.pa_3_5.m
%   2.lagrange_eval.m
%   3.lagrange_pol.m
%   4.tscheb_nst.m
%   
% Hier folgt nun das Skript, welches alle Programme zu den Aufgabenteilen
% ausfuehrt.

 
x = -1:0.01:2;
n = length(x);

%Stuetzstellen stx und Stuetzwerte stf 
stx = [-1, 0.5, 2];
stf = exp(stx);
p = zeros(n,1);

%Berechnung des Interpolationspolynoms P_L mit aequidistanten Stuetzstellen
for i = 1:n
  p(i) = lagrange_eval(stx,stf,x(i));
endfor

tstx = tscheb_nst(x(1),x(n), length(stx));
stfq = exp(tstx);
q = zeros(n,1);

%Berechnung des Interpolationspolynoms P_L mit tschebyschow Nullstellen
for j = 1:n
  q(j) = lagrange_eval(tstx, stfq, x(j));
endfor

%Plotten der drei Polynome: e**x, P_L**equiv und P_L**tscheb
plot(x, exp(x), 'r', x, p, 'b', x, q, '--b') 