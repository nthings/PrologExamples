mover(estado(enmedio,enlacaja,enmedio,nolatiene),
agarrar,
estado(enmedio,enlacaja,enmedio,latiene)).

mover(estado(P,enelpiso,P,H),
escalar,
estado(P,enlacaja,P,H)).

mover(estado(P1,enelpiso,P1,H),
empujar(P1,P2),
estado(P2,enelpiso,P2,H)).

mover(estado(P1,enelpiso,B,H),
caminar(P1,P2),
estado(P2,enelpiso,B,H)).

puedeagarrarla(estado(_,_,_,latiene)).
puedeagarrarla(Estado1):-mover(Estado1,Accion,Estado2),puedeagarrarla(Estado2).

puedeagarrarla(estado(_, _, _, latiene), []).           
puedeagarrarla(Estado1, Plan) :-                    
      mover(Estado1, Accion, Estado2),           
      puedeagarrarla(Estado2, PartialPlan),          
      add(Accion, PartialPlan, Plan). 
add(X,L,[X|L]).      
