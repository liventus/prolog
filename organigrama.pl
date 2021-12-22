es_hombre(juan).
es_hombre(pedro).
es_hombre(jhon).
es_hombre(daniel).
es_hombre(raul).
es_hombre(humberto).
es_hombre(moises).
es_hombre(carlos).
es_hombre(christian).
es_hombre(victor).
es_hombre(antony).
es_hombre(aldo).
es_hombre(jose).
es_hombre(wiliam).
es_hombre(jorge).
es_mujer(alice).
es_mujer(sonia).
es_mujer(rosa).
es_mujer(carla).
es_mujer(tania).
es_mujer(luz).
es_mujer(milagros).
es_mujer(ana).
es_mujer(jeny).
es_mujer(jessica).
es_mujer(beatriz).
jefe(juan).
jefe(alice).
jefe(daniel).
jefe(pedro).
jefe(jhon).
jefe(rosa).
jefe(victor).
jefe(raul).
jefe(humberto).
jefe(luz).
jefe(carla).
jefe(aldo).
jefe(jeny).

%TURNOS_TRABAJO
tiene_turno(juan,dia).
tiene_turno(sonia, dia).
tiene_turno(pedro,dia).
tiene_turno(jhon,dia).
tiene_turno(daniel,dia).
tiene_turno(carla,dia).
tiene_turno(raul,dia).
tiene_turno(humberto,dia).
tiene_turno(luz,dia).
tiene_turno(moises,dia).
tiene_turno(milagros,dia).
tiene_turno(ana,dia).
tiene_turno(carlos,dia).
tiene_turno(christian,dia).
tiene_turno(jessica,dia).
tiene_turno(alice,noche).
tiene_turno(rosa,noche).
tiene_turno(victor,noche).
tiene_turno(tania,noche).
tiene_turno(antony,noche).
tiene_turno(aldo,noche).
tiene_turno(jose,noche).
tiene_turno(jeny,noche).
tiene_turno(beatriz,noche).
tiene_turno(jorge,noche).
tiene_turno(wiliam,noche).

%PUESTOS_TRABAJO
su_cargo_es(juan,gerencia).
su_cargo_es(alice,gerencia).
su_cargo_es(sonia,secretaria).
su_cargo_es(pedro,administracion).
su_cargo_es(jhon,administracion).
su_cargo_es(rosa,jefe_servicio_medico).
su_cargo_es(victor,administracion).
su_cargo_es(daniel,jefe_servicio_medico).
su_cargo_es(carla,secretaria).
su_cargo_es(tania,secretaria).
su_cargo_es(antony,secretaria). %al exponer leer como si tuviera tilde secretaría
su_cargo_es(ana,asistente_secretaria).
su_cargo_es(raul,medico_especialista).
su_cargo_es(humberto,medico_especialista).
su_cargo_es(luz,medico_especialista).
su_cargo_es(wiliam,medico_especialista).
su_cargo_es(moises,medico_general).
su_cargo_es(milagros,medico_general).
su_cargo_es(aldo,medico_general).
su_cargo_es(jose,medico_general).
su_cargo_es(jeny,medico_general).
su_cargo_es(carlos,auxiliar).
su_cargo_es(christian,auxiliar).
su_cargo_es(jessica,auxiliar).
su_cargo_es(beatriz,auxiliar).
su_cargo_es(jorge,auxiliar).

%RANGO_SUELDOS
su_sueldo_es(juan,7000).
su_sueldo_es(alice,7000).
su_sueldo_es(sonia,2000).
su_sueldo_es(pedro,3000).
su_sueldo_es(jhon,3000).
su_sueldo_es(rosa,6500).
su_sueldo_es(victor,4000).
su_sueldo_es(daniel,6500).
su_sueldo_es(carla,2000).
su_sueldo_es(tania,3000).
su_sueldo_es(antony,3000).
su_sueldo_es(raul,6000).
su_sueldo_es(humberto,5000).
su_sueldo_es(luz,4000).
su_sueldo_es(moises,3500).
su_sueldo_es(milagros,3500).
su_sueldo_es(ana,1000).
su_sueldo_es(aldo,3500).
su_sueldo_es(jose,3500).
su_sueldo_es(jeny,3500).
su_sueldo_es(wiliam,4000).
su_sueldo_es(carlos,1000).
su_sueldo_es(christian,1000).
su_sueldo_es(jessica,2000).
su_sueldo_es(beatriz,1000).
su_sueldo_es(jorge,1000).

%JEFES_DE
es_jefe_de(juan,daniel).
es_jefe_de(juan,pedro).
es_jefe_de(juan,jhon).

es_jefe_de(daniel,raul).
es_jefe_de(daniel,humberto).
es_jefe_de(daniel,luz).
es_jefe_de(daniel,moises).
es_jefe_de(daniel,milagros).

es_jefe_de(pedro,carla).
es_jefe_de(jhon,sonia).

es_jefe_de(raul,carlos).
es_jefe_de(humberto,christian).
es_jefe_de(luz,jessica).

es_jefe_de(carla,ana).

es_jefe_de(alice,rosa).
es_jefe_de(alice,victor).

es_jefe_de(rosa,aldo).
es_jefe_de(rosa,jose).
es_jefe_de(rosa,jeny).
es_jefe_de(rosa,wiliam).

es_jefe_de(victor,antony).
es_jefe_de(victor,tania).

es_jefe_de(aldo,beatriz).
es_jefe_de(jeny,jorge).

%lista_empleado(X):-findall(X,es_mujer(X),R).
%EMPLEADOS_DE
es_empleado_de(Y,X):-es_jefe_de(X,Y).


%pregunta_01
%cantidad de hombres en total
cant_hombres(X):-findall(N,es_hombre(X),L),length(L,X).

%cantidad de mujeres en total
cant_mujeres(X):-findall(N,es_mujer(X),L),length(L,X).

%cantidad de jefes hombres en turno determinado.
cant_hombres_jefes(X):-findall(N,(jefe(X),es_hombre(X)),L),length(L,X).

%cantidad de jefes mujeres en turno determinado.
cant_mujeres_jefes(X):-findall(N,(jefe(X),es_mujer(X)),L),length(L,X).


% ¿cuantos hombres hay en el turno determinado?
cant_hombres_turno(X,T):-findall(N,(tiene_turno(X,T),es_hombre(X)),L),length(L,X).

% ¿cuantos mujeres hay en un turno determinado?
cant_mujer_turno(X,T):-findall(N,(tiene_turno(X,T),es_mujer(X)),L),length(L,X).

%cant_hom_noche(X,T):-tiene_turno(X,T),cant_hombres_noche(X).

% X tiene cargo de Y
cargo_de(X,Y):-findall(N,su_cargo_es(X,Y),L),length(L,X).

%lista de personas mujeres que ganan mas de N soles
mujeres_gana_mas_de(X,N):-es_mujer(X),su_sueldo_es(X,R),R>N.

%cantidad de mujeres que ganan mas de N soles
cant_muj_mas_de(X,N):-findall(N,mujeres_gana_mas_de(X,N),L),length(L,X).

%pregunta_02
%¿cuál es el porcentaje de mujeres que ganan mas 5000?
porc_mujeres_ganan_mas(X,N):-cant_muj_mas_de(A,N),cant_mujeres(B),X is A/B.

%pregunta_03 FALTA
%¿cantidad de personas en una profesion?
cant_profesionales(X,P):-findall(N,su_cargo_es(X,P),L),length(L,X).


cant_personas(X):-cant_hombres(A),cant_mujeres(B),X is A+B.
%pregunta_04
%¿qué procentaje del total de empleados son del turno determinado?
porc_empleados_turno(X,T):-cant_personas(A),cant_hombres_turno(B,T),cant_mujer_turno(C,T),X is ((C+B)/A).


%pregunta_05
%¿cuál es el porcentaje de personal que es jefe de otros?
porc_jefes_hombres(X):-cant_personas(A),cant_hombres_jefes(B),cant_mujeres_jefes(C),X is (B+C)/A.

%pregunta_06
%lista de personas mujeres que ganan menos de N soles
mujeres_gana_menos_de(X,N):-es_mujer(X),su_sueldo_es(X,R),R<N.
%lista de personas hombres que ganan menos de N soles
hombres_gana_menos_de(X,N):-es_hombre(X),su_sueldo_es(X,R),R<N.

%cantidad de mujeres que ganan menos de N soles
cant_muj_menos_de(X,N):-findall(N,mujeres_gana_menos_de(X,N),L),length(L,X).
%cantidad de mujeres que ganan menos de N soles
cant_hom_menos_de(X,N):-findall(N,hombres_gana_menos_de(X,N),L),length(L,X).

%¿cuál es el porcentaje de personal con sueldo menor a 4000?
porc_personas_menos_de(X,N):-cant_muj_menos_de(A,N),cant_hom_menos_de(B,N),cant_personas(C),X is (A+B)/C.

%pregunta_07
%cantidad de jefes mujers
cant_jefes_mujeres_turno(X,T):-findall(N,(jefe(X),es_mujer(X),tiene_turno(X,T)),L),length(L,X).
%cantidad de jefes hombres
cant_jefes_hombres_turno(X,T):-findall(N,(jefe(X),es_hombre(X),tiene_turno(X,T)),L),length(L,X).


%¿cuál es el porcentaje de personas que tienen jefe en el turno noche?
porc_jefes(X,T):-cant_jefes_hombres_turno(A,T),cant_jefes_mujeres_turno(B,T),cant_mujer_turno(C,T),cant_hombres_turno(D,T),X is (A+B)/(C+D).

%pregunta_08
%¿cuál es el porcentaje de mujeres que son jefes?
mujeres_jefes(X):-cant_mujeres(A),cant_jefes_mujeres_turno(B,dia),cant_jefes_mujeres_turno(C,noche),X is (B+C)/A.
