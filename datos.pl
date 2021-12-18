varon(francisco).
varon(domingo).
varon(genaro).
varon(moises).
varon(alberto).
varon(elias).
varon(hernan).
varon(arturo).
varon(luis).
varon(ricardo).
varon(benito).
varon(jose).
varon(kevin).
varon(andy).
varon(gregorio).
varon(john).
varon(iker).
varon(bryan).
varon(paolo).
varon(marco).

mujer(celestina).
mujer(alejandrina).
mujer(maria).
mujer(zoila).
mujer(luci).
mujer(guillermina).
mujer(jessica).
mujer(elsa).
mujer(rosa).
mujer(janet).
mujer(betty).
mujer(melissa).
mujer(fernanda).
mujer(ivet).
mujer(zaida).
mujer(rossmery).
mujer(miluska).
mujer(rosario).
mujer(niurka).
mujer(pilar).
mujer(andrea).

progenitor(francisco,maria).
progenitor(francisco,moises).
progenitor(francisco,alberto).
progenitor(celestina,maria).
progenitor(celestina,moises).
progenitor(celestina,alberto).
progenitor(domingo,luci).
progenitor(domingo,guillermina).
progenitor(alejandrina,luci).
progenitor(alejandrina,guillermina).
progenitor(genaro,jessica).
progenitor(maria,jessica).
progenitor(alberto,elsa).
progenitor(alberto,luis).
progenitor(alberto,ricardo).
progenitor(zoila,elsa).
progenitor(zoila,luis).
progenitor(zoila,ricardo).
progenitor(elias,janet).
progenitor(luci,janet).
progenitor(luci,betty).
progenitor(luci,benito).
progenitor(hernan,betty).
progenitor(hernan,benito).
progenitor(elsa,ivet).
progenitor(elsa,zaida).
progenitor(arturo,ivet).
progenitor(arturo,zaida).
progenitor(luis,rossmery).
progenitor(rosa,rossmery).
progenitor(ricardo,andy).
progenitor(ricardo,miluska).
progenitor(janet,andy).
progenitor(janet,miluska).
progenitor(benito,john).
progenitor(benito,niurka).
progenitor(melissa,john).
progenitor(fernanda,niurka).
progenitor(jose,iker).
progenitor(zaida,iker).
progenitor(rossmery,bryan).
progenitor(rossmery,pilar).
progenitor(kevin,bryan).
progenitor(kevin,pilar).
progenitor(gregorio,paolo).
progenitor(miluska,paolo).
progenitor(rosario,marco).
progenitor(rosario,andrea).
progenitor(john,marco).
progenitor(john,andrea).

pareja(francisco,celestina).
pareja(domingo,alejandrina).
pareja(genaro,maria).
pareja(alberto,zoila).
pareja(elias,luci).
pareja(luci,hernan).
pareja(elsa,arturo).
pareja(luis,rosa).
pareja(ricardo,janet).
pareja(benito,melissa).
pareja(benito,fernanda).
pareja(jose,zaida).
pareja(rossmery,kevin).
pareja(gregorio,miluska).
pareja(rosario,john).

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

tatarabuelo(X,Y) :- padre(X,W),progenitor(W,Z),progenitor(Z,V),progenitor(V,Y).
tatarabuela(X,Y) :- madre(X,W),progenitor(W,Z),progenitor(Z,V),progenitor(V,Y).

mismo(X,X).
diferente(X,Y) :- not(mismo(X,Y)).

mediohermanos(X,Y) :- pareja(B,A),pareja(A,C),progenitor(B,X),progenitor(C,Y),diferente(B,C),diferente(X,Y).
mediohermanos(X,Y) :- pareja(A,B),pareja(C,A),progenitor(B,X),progenitor(C,Y),diferente(B,C),diferente(X,Y).
mediohermanos(X,Y) :- pareja(A,B),pareja(A,C),progenitor(B,X),progenitor(C,Y),diferente(B,C),diferente(X,Y).
mediohermanos(X,Y) :- pareja(B,A),pareja(C,A),progenitor(B,X),progenitor(C,Y),diferente(B,C),diferente(X,Y).


hermano(X,Y) :- progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),varon(Z),not(mediohermanos(X,Y)),varon(X).
hermana(X,Y) :- progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),varon(Z),not(mediohermanos(X,Y)),mujer(X).
hermanos(X,Y) :- progenitor(Z,X),progenitor(Z,Y),diferente(X,Y),varon(Z),not(mediohermanos(X,Y)).

primohermanos(X,Y) :- progenitor(Z,X),tio(Z,Y),varon(X).
primohermanos(X,Y) :- progenitor(Z,X),tio(Z,Y),mujer(X),varon(Y).
primohermanos(X,Y) :- progenitor(Z,X),tia(Z,Y),varon(X).
primohermanos(X,Y) :- progenitor(Z,X),tia(Z,Y),mujer(X),varon(Y).
primohermanas(X,Y) :- progenitor(Z,X),tio(Z,Y),mujer(X),mujer(Y).
primohermanas(X,Y) :- progenitor(Z,X),tia(Z,Y),mujer(X),mujer(Y).

primos(X,Y) :- progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),varon(X).
primos(X,Y) :- progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),varon(Y).
primos(X,Y) :- progenitor(Z,X),primohermanas(Z,W),progenitor(W,Y),varon(X).
primos(X,Y) :- progenitor(Z,X),primohermanas(Z,W),progenitor(W,Y),mujer(X),varon(Y).
primas(X,Y) :- progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),mujer(Y).	
primas(X,Y) :- progenitor(Z,X),primohermanos(Z,W),progenitor(W,Y),mujer(X),mujer(Y).

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


cuñado(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),varon(X).
cuñado(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),varon(X).
cuñada(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanos(W,Y),mujer(X).
cuñada(X,Y) :- progenitor(X,Z),progenitor(W,Z),diferente(X,W),hermanas(W,Y),mujer(X).


suegro(X,Y) :- progenitor(X,Z),pareja(Y,Z),diferente(Z,Y),varon(X).
suegra(X,Y) :- progenitor(X,Z),pareja(Y,Z),diferente(Z,Y),mujer(X).

yerno(X,Y) :- suegro(Y,X),varon(X).
yerno(X,Y) :- suegra(Y,X),varon(X).

nuera(X,Y) :- suegro(Y,X),mujer(X).
nuera(X,Y) :- suegra(Y,X),mujer(X).

i_men(uno,dos).
i_men(dos,tres).
i_men(ocho,nueve).
i_may(X,Y):-i_men(Y,X).

mmmayor(X,Y):-i_may(X,Z).



