%---------------------------------------------%
%                 Teste Arvore                %
%                                             %
%   João---Maria               Pedro---Laura  %
%        |                           |        %
%  Lucas   Joaquim-----------------Silvia     %
%                         |                   %
%                       Bruno                 %
%---------------------------------------------%

pai(joao, joaquim).
pai(joao, lucas).
pai(pedro, silvia).
pai(joaquim, bruno).

mae(maria, joaquim).
mae(maria, lucas).
mae(laura, silvia).
mae(silvia, bruno).

tem_filho(X) :- pai(X,_).
tem_filho(X) :- mae(X,_).

avo(A,C) :- pai(A,B), pai(B,C).
avo(A,C) :- pai(A,B), mae(B,C).

avo_paterno(X,Y) :- pai(X,Z), pai(Z,Y).