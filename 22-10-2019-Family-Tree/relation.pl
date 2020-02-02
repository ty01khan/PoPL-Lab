man(bro1).
man(bro2).
man(bro3).
man(bro4).
man(father1).
man(father2).
man(gfather1).
man(gfather2).
woman(sis1).
woman(sis2).
woman(mom1).
woman(mom2).
woman(gmom1).
woman(gmom2).

parent(bro1, father1).
parent(bro1, mom1).
parent(bro2, father1).
parent(bro2, mom1).
parent(bro3, father1).
parent(bro3, mom2).
parent(bro4, father2).
parent(bro4, mom1).
parent(sis1, father1).
parent(sis1, mom1).
parent(sis2, father1).
parent(sis2, mom1).
parent(father1, gfather1).
parent(father1, gmom1).
parent(mom1, gmom2).
parent(mom1, gfather2).

%%% Facts end here %%%%%%%%%%%%%%%%%%%

mother(X,Y)  :- woman(Y), parent(X,Y).
father(X,Y)  :- man(Y), parent(X,Y).

%% Exercise
%%
%% What happens when the brother definition does not have dif
%% ANS
%% then the query can not differentiate between X & Y whether they are same or not 
%% Write a half brother relation similar to brother.



%% corrected form
sibling(X,Y) :- dif(X,Y), father(X,Z), father(Y,Z), mother(X,M), mother(Y,M).

brother(X,Y) :- man(Y), sibling(X, Y).

sister(X,Y) :- woman(Y), sibling(X, Y).

halfbrother(X, Y) :- dif(X, Y), father(X, F), father(Y, G), mother(X, M), mother(Y, M), dif(F, G).
halfbrother(X, Y) :- dif(X, Y), father(X, F), father(Y, F), mother(X, M), mother(Y, N), dif(M, N).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- ancestor(X,Z), parent(Z,Y).
