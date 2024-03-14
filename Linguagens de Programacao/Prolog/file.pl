pai('ivan','diego').
pai('benedito','ivan').

avo(X,Y):- pai(Z,Y),pai(X,Z).
