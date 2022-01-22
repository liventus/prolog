persona(pedro).
persona(pablo).
persona(marcos).
persona(juan).
persona(jam).
persona(luisa).
persona(miguel).
persona(santiago).
persona(mateo).
persona(fiorela).
persona(luisa).
persona(kimberli).
persona(jose).
persona(richar).
persona(ana).
persona(paul).
persona(ines).
persona(yola).
persona(angel).
persona(persi).
persona(paolo).
persona(jhon).
persona(melisa).
persona(luis).
persona(bryan).
persona(jeral).
persona(carla).
persona(susana).
persona(jaime ).
persona(flor).
persona(jack).

es(pedro,varon).
es(pablo,varon).
es(marcos,varon).
es(juan,varon).
es(jam,varon).
es(paul,varon).
es(miguel,varon).
es(santiago,varon).
es(mateo,varon).
es(jose,varon).
es(richar,varon).
es(angel,varon).
es(persi,varon).
es(paolo,varon).
es(jhon,varon).
es(luis,varon).
es(bryan,varon).
es(jaime,varon).
es(jack,varon).
es(luisa,mujer).
es(fiorela,mujer).
es(luisa,mujer).
es(kimberli,mujer).
es(ana,mujer).
es(ines,mujer).
es(yola,mujer).
es(melisa,mujer).
es(jeral,mujer).
es(carla,mujer).
es(susana,mujer).
es(flor,mujer).

esPadreDe(ines,pedro).
esPadreDe(ines,pablo).
esPadreDe(ana,marcos).
esPadreDe(ana,juan).
esPadreDe(jose,jam).
esPadreDe(fiorela,luisa).
esPadreDe(mateo,miguel).
esPadreDe(yola ,ines).
esPadreDe(angel,paul).
esPadreDe(angel,ana).
esPadreDe(pedro,richard).
esPadreDe(pedro,jose).
esPadreDe(paolo,kimberli).
esPadreDe(jhon,luisa).
esPadreDe(jhon,fiorela).
esPadreDe(melisa,mateo).
esPadreDe(melisa,santiago).
esPadreDe(bryan,yola).
esPadreDe(bryan,angel).
esPadreDe(jeral,pedro).
esPadreDe(jeral,paolo).
esPadreDe(carla,jhon).
esPadreDe(carla,melisa).
esPadreDe(susana,luis).
esPadreDe(flor,bryan).
esPadreDe(flor,jeral).
esPadreDe(jaime,carla).
esPadreDe(jaime,susana).
esPadreDe(jack,flor).
esPadreDe(jack,jaime).

nacioEn(persi,mexico).
nacioEn(pablo,peru).
nacioEn(marcos,inglaterra).
nacioEn(juan,argentina).
nacioEn(jam,china).
nacioEn(luisa,colombia).
nacioEn(miguel,japon).
nacioEn(santiago,china).
nacioEn(mateo,mexico).
nacioEn(fiorela,corea).
nacioEn(luisa,japon).
nacioEn(kimberli,irlanda).
nacioEn(jose,alemania).
nacioEn(richar,holanda).
nacioEn(ana,inglaterra).
nacioEn(paul,colombia).
nacioEn(ines,india).
nacioEn(yola,peru).
nacioEn(angel,corea).
nacioEn(pedro,japon).
nacioEn(paolo,argentina).
nacioEn(jhon,peru).
nacioEn(melisa,argentina).
nacioEn(luis,irlanda).
nacioEn(bryan,alemania).
nacioEn(jeral,irlanda).
nacioEn(carla,india).
nacioEn(susana,corea).
nacioEn(jaime ,colombia).
nacioEn(flor,holanda).
nacioEn(jack,holanda).


habla(india,ingles).
habla(corea ,coreano).
habla(japon,japones).
habla(china,chino).
habla(holanda,neerlandes).
habla(inglaterra,ingles).
habla(irlanda,ingles).
habla(alemania,aleman).
habla(peru,espa�ol).
habla(argentina,espa�ol).
habla(mexico,espa�ol).
habla(colombia,espa�ol).


estudio(flor,ingles).
estudio(angel,aleman).
estudio(jam,japones).
estudio(paolo,ingles).
estudio(luis,espa�ol).
aprendio(jhon,ingles).


%listaP([pedro,pablo,marcos,juan,jam,luisa,miguel,santiago,mateo,fiorela,luisa,kimberli,jose,richar,ana,paul,ines,yola,angel,persi,paolo,jhon,melisa,luis,bryan,jeral,carla,susana,jaime,flor,jack]).

%inser(E,L):-agregar_origen(E,L,[E|L]).
inserta(C,lpi,[C|lpi]).

%lpi: lista de los que hablan un idioma en especifico
lpi(L):-L=[].
%cuantosHablan(A):-lista

%pregunta_01
% Listar los nombres de las personas que hablan un idioma determinado
%cpl:cantidad de personas que hablan un mismo lenguaje
%cpl([],0).
%cpl([_|Q],N):-cpl(Q,M),N is M+1.
%cplr(A):-cpl(lispaP,A).
%cdc([a,b]).
%por_nacimiento
nhablan1(C,A):-nacioEn(C,D),habla(D,A),inserta(C,lpi,[C|lpi]),writeln(C).
%por_estudio
nhablan2(C,A):-estudio(C,A),inserta(C,lpi,[C|lpi]),writeln(C).
%por_ascendido
nhablan3(C,A):-aprendio(C,A),inserta(C,lpi,[C|lpi]),writeln(C).
%en_general
nhablan(A):-persona(C),nhablan1(C,A),nhablan2(C,A),nhablan3(C,A).

%pregunta_02
%Determinar la cantidad de personas que hablan un idioma determinado
cant_hablan(X,Y):-nhablan(Z,Y),length(Z,X).

%pregunta_03
% Listar los nombres de las personas que hablan N idiomas


%pregunta_04
%Determinar la cantidad de personas que hablan N idiomas

%pregunta_05
%Listar los nombres de las personas que hablan menos de N idiomas

%pregunta_06
%Determinar la cantidad de personas que hablan menos de N idiomas

%pregunta_07
%Determinar el porcentaje de mujeres que hablan un idioma


%cuantos descendientes de PEDRO hablan menos de DOS idiomas

%Listar los nombres de los hijos de X que hablan el idioma  N

hijo_de(Y,X):-esPadreDe(X,Y).

hijos_de_x_que_hablan_n(X,N):-hijo_de(Y,X),nacioEn(Y,Z),habla(Z,N);hijo_de(Y,X),aprendio(Y,N);hijo_de(Y,X),habla(X,N).

%-----------------------------------------------------------------------------------------------------------------


f(PADRE,IDIOMA,HIJO):-progenitor(PADRE,HIJO),idioma(HIJO,IDIOMA).



hijos_dos_idiomas(HIJO,PADRE,IDIOMA1,IDIOMA2):-progenitor(PADRE,HIJO),idiomas_persona(HIJO,IDIOMA1),idiomas_persona(HIJO,IDIOMA2).

frk2(X,Y,Z,P):-progenitor(X,Y),setof(Y,personahabla(Y,Z),L),setof(Y,personahabla(Y,P),L).
%frk2(juan,Z,español,aleman).

leg_desc(X,Y,K):-descendiente(R1,Y),lengua(R2,R1),mismo(R2,K),mismo(R1,X).

desc_hablan(X,Y,K):-findall(R,leg_desc(R,Y,K),T),my_compress(T,X).

hijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-desc(PADRE,HIJOS),(idioma(HIJOS,IDIOMA1);idioma(HIJOS,IDIOMA2)).

nhijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-setof(Z,hijos_habla(PADRE,IDIOMA1,IDIOMA2,Z),HIJOS).

nprogenitor(PADRE,L_HIJO):- setof(Z,progenitor(PADRE,Z),L_HIJO).