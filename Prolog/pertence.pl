pertence(X,[X|_]).
pertence(X,[_|R]) :- pertence(X,R).

lista([1,2,3]).