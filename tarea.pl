%edificio
arriba(piso6,piso5).
arriba(piso5,piso4).
arriba(piso4,piso3).
arriba(piso3,piso2).
arriba(piso2,piso1).
masarriba(X,Y):-arriba(X,Y).
masarriba(X,Y):-arriba(X,Z),masarriba(Z,Y).

%cine
asiento_derecho(asiento1,asiento2).
asiento_derecho(asiento2,asiento3).
asiento_derecho(asiento3,asiento4).
asiento_derecho(asiento4,asiento5).
asiento_derecho(asiento5,asiento6).
asiento_mas_a_la_derecha(X,Y):-asiento_derecho(X,Y).
asiento_mas_a_la_derecha(X,Y):-asiento_derecho(X,Z),asiento_mas_a_la_derecha(Z,Y).

asiento_izquierdo(X,Y):-asiento_derecho(Y,X).
asiento_mas_a_la_izquierdo(X,Y):-asiento_izquierdo(X,Y).
asiento_mas_a_la_izquierdo(X,Y):-asiento_izquierdo(X,Z),asiento_mas_a_la_izquierdo(Z,Y).
entre(Z,X,Y):-asiento_mas_a_la_izquierdo(X,Z),asiento_mas_a_la_derecha(Y,Z).

%ejercito
superior(raul,jorge).
superior(raul,tania).
superior(raul,daniel).
superior(raul,humberto).
superior(raul,carlos).

superior(pedro,raul).

superior(juan,raul).

inferior(X,Y):-superior(Y,X).
minferior(X,Y):-inferior(X,Y).
minferior(X,Y):-inferior(X,Z),inferior(Z,Y).






