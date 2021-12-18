%hechos
despues(chosica,huachipa).
despues(huachipa,vitarte).
despues(vitarte,santa_anita).
despues(santa_anita,san_fernando).
despues(san_fernando,bolognesi).
despues(bolognesi,san_marcos).
mdespues(X,Y):-despues(X,Y).
mdespues(X,Y):-despues(X,Z),mdespues(Z,Y).
antes(X,Y):-despues(Y,X).
mantes(X,Y):-antes(X,Y).
mantes(X,Y):-antes(X,Z),mantes(Z,Y).
entre(Z,X,Y):-mdespues(X,Z),mantes(Y,Z).




ddes(X,Y):-des(X,Y).
ddes(X,Y):-des(X,Z),ddes(Z,Y).

%arbol genialogico.
padre(X,Y) :- progenitor(X,Y),varon(X).
madre(X,Y) :- progenitor(X,Y),mujer(X).
hijo(X,Y) :- progenitor(Y,X),varon(X).
hija(X,Y) :- progenitor(Y,X),mujer(X).
abuelo(X,Y) :- padre(X,Z),progenitor(Z,Y).
abuela(X,Y) :- madre(X,Z),progenitor(Z,Y).
nieto(X,Y) :- progenitor(Y,Z),progenitor(Z,X),varon(X).
nieta(X,Y) :- progenitor(Y,Z),progenitor(Z,X),mujer(X).
bisabuelo(X,Y) :- padre(X,W),progenitor(W,Z),progenitor(Z,Y).
bisabuela(X,Y) :- madre(X,W),progenitor(W,Z),progenitor(Z,Y).
bisnieto(X,Y) :- bisabuelo(Y,X),varon(X).
bisnieto(X,Y) :- bisabuela(Y,X),varon(X).
bisnieta(X,Y) :- bisabuelo(Y,X),mujer(X).
bisnieta(X,Y) :- bisabuela(Y,X),mujer(X).
mismo(X,X).
diferente(X,Y) :- not(mismo(X,Y)).
hermanos(X,Y) :-
progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),varon(X),varon(Z)
.
hermanos(X,Y) :-
progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),mujer(X),varon(Y)
,varon(Z).
hermanas(X,Y) :-
progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),mujer(X),mujer(Y)
,varon(Z).
primohermanos(X,Y) :- progenitor(Z,X),tio(Z,Y),varon(X).
primohermanos(X,Y) :-
progenitor(Z,X),tio(Z,Y),mujer(X),varon(Y).
primohermanos(X,Y) :- progenitor(Z,X),tia(Z,Y),varon(X).
primohermanos(X,Y) :-
progenitor(Z,X),tia(Z,Y),mujer(X),varon(Y).
primohermanas(X,Y) :-
progenitor(Z,X),tio(Z,Y),mujer(X),mujer(Y).
primohermanas(X,Y) :-
progenitor(Z,X),tia(Z,Y),mujer(X),mujer(Y).
primos(X,Y) :-
progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),varon(X).
primos(X,Y) :-
progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),varon(Y).
primos(X,Y) :-
progenitor(Z,X),primohermanas(Z,W),progenitor(W,Y),varon(X).
primos(X,Y) :-
progenitor(Z,X),primohermanas(Z,W),progenitor(W,Y),mujer(X),varon(Y).
primas(X,Y) :-
progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),mujer(Y).
primas(X,Y) :-
progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),mujer(Y).
tio(X,Y) :- hermanos(X,Z),progenitor(Z,Y),varon(X).
tio(X,Y) :- primohermanos(X,Z),progenitor(Z,Y),varon(X).
tia(X,Y) :- hermanos(X,Z),progenitor(Z,Y),mujer(X).
tia(X,Y) :- hermanas(X,Z),progenitor(Z,Y),mujer(X).
tia(X,Y) :- primohermanos(X,Z),progenitor(Z,Y),mujer(X).
tia(X,Y) :- primohermanas(X,Z),progenitor(Z,Y),mujer(X).
sobrino(X,Y) :- tio(Y,X),varon(X).
sobrino(X,Y) :- tia(Y,X),varon(X).
sobrina(X,Y) :- tio(Y,X),mujer(X).
sobrina(X,Y) :- tia(Y,X),mujer(X).
cuniado(X,Y) :-progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),varon(X).
cuniado(X,Y) :-progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),varon(X).
cuniado(X,Y) :-progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanos(W,X),varon(Y).
cuniado(X,Y) :-progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanas(W,X),varon(Y).
cuniada(X,Y) :-progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),mujer(X).
cuniada(X,Y) :-progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),mujer(X).
cuniada(X,Y) :-progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanos(W,X),mujer(Y).
cuniada(X,Y) :-progenitor(Y,Z),progenitor(W,Z),diferente(Y,W),hermanas(W,X),mujer(Y).
suegro(X,Y) :-progenitor(X,Z),casados(Y,Z),diferente(Z,Y),varon(X).
suegra(X,Y) :-progenitor(X,Z),casados(Y,Z),diferente(Z,Y),mujer(X).
yerno(X,Y) :- suegro(Y,X),varon(X).
yerno(X,Y) :- suegra(Y,X),varon(X).
nuera(X,Y) :- suegro(Y,X),mujer(X).
nuera(X,Y) :- suegra(Y,X),mujer(X).
vecinos(X,Y):- vecino(X,Z),casados(Z,Y).
vecinos(X,Z):- vecino(X,Y),progenitor(Y,Z).
vecinos(X,Y):- vecino(X,Y).
varon(juan).
varon(mario).
varon(ruben).
varon(teodoro).
varon(victor).
varon(alejandro).
varon(juanito).
varon(julio).
varon(jorge).
varon(paulino).
varon(leonardo).
varon(ernesto).
varon(juan).
varon(antony).
varon(jose).
varon(john).
varon(wilfredo).
varon(aldo).
mujer(maria).
mujer(felicita).
mujer(gloria).
mujer(marina1).
mujer(alicia).
mujer(brigida).
mujer(marina2).
mujer(amelia).
mujer(irma).
mujer(tiburcia).
mujer(graciela).
mujer(griselda).
mujer(marilyn).
mujer(jessica).
mujer(veronica).
mujer(rosa).
mujer(jeny).
mujer(beatriz).
mujer(ashly).
mujer(ariana).
mujer(joselyn).
mujer(alexandra).
progenitor(juan,alicia).
progenitor(juan,brigida).
progenitor(maria,alicia).
progenitor(maria,brigida).
progenitor(felicita,victor).
progenitor(mario,victor).
progenitor(ruben,alejandro).
progenitor(ruben,juanito).
progenitor(gloria,alejandro).
progenitor(gloria,juanito).
progenitor(teodoro,marina2).
progenitor(teodoro,amelia).
progenitor(marina1,marina2).
progenitor(marina1,amelia).
progenitor(brigida,jorge).
progenitor(brigida,tiburcia).
progenitor(brigida,leonardo).
progenitor(victor,jorge).
progenitor(victor,tiburcia).
progenitor(victor,leonardo).
progenitor(marina,graciela).
progenitor(marina,griselda).
progenitor(marina,juan).
progenitor(alejandro,graciela).
progenitor(julio,griselda).
progenitor(julio,juan).
progenitor(irma,antony).
progenitor(irma,marilyn).
progenitor(jorge,antony).
progenitor(jorge,marilyn).
progenitor(tiburcia,jessica).
progenitor(tiburcia,veronica).
progenitor(paulino,jessica).
progenitor(paulino,veronica).
progenitor(graciela,rosa).
progenitor(graciela,john).
progenitor(graciela,beatriz).
progenitor(leonardo,rosa).
progenitor(leonardo,john).
progenitor(leonardo,beatriz).
progenitor(griselda,aldo).
progenitor(ernesto,aldo).
progenitor(jose,ashly).
progenitor(marilyn,ashly).
progenitor(john,ariana).
progenitor(jeny,ariana).
progenitor(beatriz,joselyn).
progenitor(beatriz,alexandra).
progenitor(wilfredo,joselyn).
progenitor(wilfredo,alexandra).
casados(juan,maria).
casados(mario,felicita).
casados(ruben,gloria).
casados(teodoro,marina1).
casados(victor,brigida).
casados(alejandro,marina).
casados(julio,marina).
casados(jorge,irma).
casados(leonardo,graciela).
casados(paulino,tiburcia).
casados(ernesto,griselda).
casados(jose,marilyn).
casados(john,jeny).
casados(wilfredo,beatriz).
%vecinos(julio,victor).
primergrado(P,X):- progenitor(P,X).
primergrado(P,X):-hermanos(P,X).
primergrado(P,X):-hermanas(P,X).
primergrado(P,X):-hijo(P,X).
primergrado(P,X):-hija(P,X).
cuantosprimerg(P,N):-
findall(X,(primergrado(P,X)),L),length(L,C),N is C.
cuantosprimmujer(P,N):-findall(X,(primergrado(P,X),mujer(X)),L),length(L,C),N is C.
/*
Esta regla calcula el porcentaje de mujeres del primer grado 
sanguineo
*/
porcprimujer(P,N):-cuantosprimerg(P,N1),cuantosprimmujer(P,N2),N is 100*N2/N1.

descendientemujer(X,Y):-hija(Y,X).
descendientemujer(X,Y):-progenitor(X,Z),descendientemujer(Z,Y).

%tarea








