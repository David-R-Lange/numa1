% Programmieraufgabe 7.7
% Liste der Gruppenmitglieder (Name, Matrikelnummer)
%   1. Finja Tadge, 10053115
%   2. Jean-Luc Brueggemann, 10048805
%   3. Rene-David Brueggemann, 10040204
%
% Programmiersprache: GNU Octave
% Version: 5.2.0
%
% Liste der eingesendeten Dateien:
%   1. sparse_CSR.m
%   2. norm_1_CSR.m
%   3. norm_infty_CSR.m
%   4. pa_7_7.m
%   
% Hier folgt nun das Skript, welches alle Programme zu den Aufgabenteilen
% ausfuehrt. 

N = [2,-1,0,0,0;-1,2,-1,0,0;0,-1,2,-1,0;0,0,-1,2,-1;0,0,0,-1,2]

[A,IA,JA] = sparse_CSR(N)

eins_norm = norm_1_CSR(A,IA,JA)
inf_norm = norm_infty_CSR(A,IA,JA)