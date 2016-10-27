conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

length2([],0).
length2([_|L],X):-length2(L,A),X is A+1.
%3.1
eliminar3conc(L,LR):-conc(LR,[_,_,_],L).
eliminar3(L,LR):-conc([_,_,_],LR,L1),conc(L1,[_,_,_],L).

%3.2
lastconc(Last,List):-conc(L,[Last],List).
lastsinconc(Last,[Last|[]]).
lastsinconc(Last,[H|T]):-lastsinconc(Last,T).

%3.3
listapar(L):- length2(L,X), A is (X mod 2), A == 0.
listanon(L):- length2(L,X), A is (X mod 2), A == 1.

%3.4
reverso([],[]).
reverso([Cabeza|Cola],Reversa):-reverso(Cola,L),conc(L,[Cabeza],Reversa).

%3.5
palindromo(Lista):-reverso(Lista, Reversa), Lista == Reversa.

%3.6
rotar([Cabeza|Cola],Rotado):- conc(Cola,[Cabeza],Rotado).

%3.7
significa(1,uno).
significa(2,dos).
significa(3,tres).
significa(4,cuatro).
significa(5,cinco).
significa(6,seis).
significa(7,siete).
significa(8,ocho).
significa(9,nueve).
traducir([],[]).
traducir([H|Tail],[H2|Tail2]):-significa(H,H2),traducir(Tail,Tail2).

%3.8

sub(Set, []).
sub([HSet|Set], [HSet|Sub]):-sub(Set, Sub).
sub([_|Set], Sub):-sub(Set, Sub).