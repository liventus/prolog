%pasajeros
varon(juan).
varon(mario).
varon(ruben).
varon(teodoro).

mujer(maria).
mujer(felicita).
mujer(gloria).
mujer(marina1).

%personas que subieron y bajaron
subio_paredero(juan,huachipa).
subio_paredero(mario,huachipa).
subio_paredero(maria,vitarte).
subio_paredero(felicita,santa_anita).
subio_paredero(ruben,mexico).
subio_paredero(teodoro,vitarte).
subio_paredero(gloria,santa_anita).
subio_paredero(marina1,mexico).


bajo_paredero(juan,venezuela).
bajo_paredero(mario,universitaria).
bajo_paredero(maria,universitaria).
bajo_paredero(felicita,mexico).
bajo_paredero(ruben,unmsm).
bajo_paredero(teodoro,unmsm).
bajo_paredero(gloria,unmsm).
bajo_paredero(marina1,bolognesi).


%chosica, huachipa, vitarte, santa_anita,mexico, grau, bolognesi,venezuela,universitaria,unmsm.
%despues(X,Y): se define como X esta despues de Y. 
despues(huachipa,chosica).
despues(vitarte,huachipa).
despues(santa_anita,vitarte).
despues(mexico,santa_anita).
despues(grau,mexico).
despues(bolognesi,grau).
despues(venezuela,bolognesi).
despues(universitaria,venezuela).
despues(unmsm,universitaria).
mdespues(X,Y):-despues(X,Y).
mdespues(X,Y):-despues(X,Z),mdespues(Z,Y).
antes(X,Y):-despues(Y,X).
mantes(X,Y):-antes(X,Y).
mantes(X,Y):-antes(X,Z),mantes(Z,Y).

entre_paraderos(Z,X,Y):-mdespues(X,Z),mantes(Y,Z).
qsedp(A,X,Y):-mdespues(X,Z),mantes(Y,Z),subio_paredero(A,Z).



mb4(M,P):-mantes(X,P),bajo_paredero(M,X),mujer(M).



















