conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

lastconc(Item,List):-conc(_,[Item],List).

last(Item,[Item]).
last(Item,[Head|Tail]):-last(Item,Tail).

deletelast3(L1,L):-conc(L,[_,_,_],L1).

delete3firstlast(L1,L2):-conc(L,[_,_,_],L1),conc([_,_,_],L2,L).

addtotail(X,L,LR):-conc(L,[X],LR).

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]]):-del(X,Tail,Tail1).

insert(X,List,BiggerList):-del(X,BiggerList,List).

permutation([],[]).
permutation([X|L],P):-permutation(L,L1),insert(X,L1,P).

permutation2([],[]).
permutation2(L,[X|P]):-del(X,L,L1),permutation2(L1,P).

length2([],0).
length2([_|L],X):-length2(L,A),X is A+1.