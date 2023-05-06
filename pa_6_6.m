%% Programmieraufgabe 6.6
%
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Finja Tadge, 10053115
%   2. Jean-Luc Brueggemann, 10048805
%   3. Rene-David Brueggemann, 10040204
%
% Programmiersprache: GNU Octave
% Version: 5.2.0
%
% Liste der eingesendeten Dateien:
%   1. pa_6_6.m
%   2. gauss_legendre.m
%   
% Hier folgt nun das Skript, welches alle Programme zu den Aufgabenteilen
% ausfuehrt. 

%Given function g(x)
g = @(x) x.^(4) - 3.*x.^(2) + 1;

%Intervals a and b for integration
a = 1;
b = 5;

%For-loop to investigate all k=0,1,2 and its results
for k=0:2
  I_1 = gauss_legendre(k,a,b,g,1);
  fprintf('Die Naeherungsweise Integration von g(x) mit k = %d und der Zerlegung von T_1 = {[1,5]} ist: %d \n',k,I_1)
  I_2 = gauss_legendre(k,a,b,g,10000);
  fprintf('Die Naeherungsweise Integration von g(x) mit k = %d und der Zerlegung von T_2 = {[1,2][2,3],[3,4],[4,5]} ist: %d \n',k, I_2)
endfor