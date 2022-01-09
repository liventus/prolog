%son_hombres
es_hombre(jaime).
es_hombre(miguel).
es_hombre(jose).
es_hombre(carlos).
es_hombre(brian).
es_hombre(pedro).
es_hombre(nicolas).
es_hombre(pablo).
es_hombre(matias).
es_hombre(julio).
es_hombre(jorge).
es_hombre(escanor).
es_hombre(alberto).
es_hombre(adrian).

%son_mujeres
es_mujer(jenny).
es_mujer(martha).
es_mujer(susana).
es_mujer(diana).
es_mujer(maria).

%puesto
su_cargo_es(jose,gerencia).
su_cargo_es(pablo,jefe_servicio_medico).
su_cargo_es(jaime,administracion).
su_cargo_es(pedro,administracion).
su_cargo_es(escanor,jefe_rrhh).
su_cargo_es(brian,medico_especialista).
su_cargo_es(miguel,medico_especialista).
su_cargo_es(diana,medico_especialista).
su_cargo_es(jorge,medicina_general).
su_cargo_es(maria,medicina_general).
su_cargo_es(carlos,secretaria).
su_cargo_es(susana,secretaria).
su_cargo_es(alberto,rrhh).
su_cargo_es(adrian,rrhh).
su_cargo_es(nicolas,auxiliar).
su_cargo_es(jenny,auxiliar).
su_cargo_es(matias,auxiliar).
su_cargo_es(martha,enfemera).
su_cargo_es(julio,asistente_secretaria).

%jefe
jefe(jose).
jefe(pablo).
jefe(jaime).
jefe(pedro).
jefe(escanor).
jefe(brian).
jefe(miguel).
jefe(maria).
jefe(diana).
jefe(jorge).
jefe(carlos).


%es_jefe
es_jefe_de(jose,pablo).
es_jefe_de(jose,jaime).
es_jefe_de(jose,pedro).
es_jefe_de(jose,escanor).

es_jefe_de(pablo,brian).
es_jefe_de(pablo,miguel).
es_jefe_de(pablo,diana).
es_jefe_de(pablo,jorge).
es_jefe_de(pablo,maria).

es_jefe_de(jaime,carlos).

es_jefe_de(pedro,susana).

es_jefe_de(escanor,alberto).
es_jefe_de(escanor,adrian).

es_jefe_de(brian,nicolas).

es_jefe_de(miguel,jenny).

es_jefe_de(diana,matias).

es_jefe_de(jorge,martha).

es_jefe_de(carlos,julio).
es_jefe_de(carlos,julio).


%EMPLEADOS_DE
es_empleado_de(Y,X):-es_jefe_de(X,Y).

%RANGO_SUELDOS
su_sueldo_es(jose,7000).
su_sueldo_es(pablo,6500).
su_sueldo_es(jaime,3000).
su_sueldo_es(pedro,3000).
su_sueldo_es(escanor,2500).
su_sueldo_es(brian,6000).
su_sueldo_es(miguel,5000).
su_sueldo_es(diana,4000).
su_sueldo_es(jorge,3500).
su_sueldo_es(maria,3500).
su_sueldo_es(carlos,2000).
su_sueldo_es(susana,2000).
su_sueldo_es(alberto,1500).
su_sueldo_es(adrian,1500).
su_sueldo_es(nicolas,1000).
su_sueldo_es(jenny,1000).
su_sueldo_es(matias,2000).
su_sueldo_es(martha,2000).
su_sueldo_es(julio,1000).

%IDIOMA_NATAL
idioma_natal(jose,neerlandes).
idioma_natal(pablo,aleman).
idioma_natal(jaime,ingles).
idioma_natal(pedro,ingles).
idioma_natal(escanor,espanol).
idioma_natal(brian,espanol).
idioma_natal(miguel,aleman).
idioma_natal(diana,neerlandes).
idioma_natal(jorge,ingles).
idioma_natal(maria,ingles).
idioma_natal(carlos,coreano).
idioma_natal(susana ingles,).
idioma_natal(alberto,coreano).
idioma_natal(adrian,ingles).
idioma_natal(nicolas,espanol).
idioma_natal(jenny,aleman).
idioma_natal(matias,chino).
idioma_natal(martha,ingles).
idioma_natal(julio,ingles).

%&IDIOMA_APRENDIDO
idioma_aprendido(jose,ingles).
idioma_aprendido(pablo,ingles).
idioma_aprendido(jaime,coreano).
idioma_aprendido(pedro,espanol).
idioma_aprendido(escanor,ingles).
idioma_aprendido(brian,ingles).
idioma_aprendido(miguel,espanol).
idioma_aprendido(diana,aleman).
idioma_aprendido(jorge,espanol).
idioma_aprendido(maria,chino).
idioma_aprendido(carlos,espanol).
idioma_aprendido(susana,espanol).
idioma_aprendido(alberto,chino).
idioma_aprendido(adrian,aleman).
idioma_aprendido(nicolas,chino).
idioma_aprendido(jenny,neerlandes).
idioma_aprendido(matias,espanol).
idioma_aprendido(martha,chino).
idioma_aprendido(julio,coreano).

%&PAREDERO_DESTINO
persona_de_a(jeny,tingoMaria,estadio).
persona_de_a(alberto,santaAnita,estadio).
persona_de_a(bryan,palomino,estadio).
persona_de_a(julio,abancay,estadio).
persona_de_a(escanor,yerbatero,estadio).
persona_de_a(adrian,ceres,estadio).
persona_de_a(miguel,santaAnita,estadio).
persona_de_a(nicolas,tingoMaria,estadio).
persona_de_a(matias,plazaBolognesi,estadio).
persona_de_a(martha,aguarico,estadio).
persona_de_a(jorge,miguelGrau,estadio).
persona_de_a(carlos,palomino,estadio).
persona_de_a(maria,plazaBolognesi,estadio).
persona_de_a(diana,yerbatero,estadio).
persona_de_a(susana,abancay,estadio).
persona_de_a(jaime,ceres,estadio).
persona_de_a(pedro,miguelGrau,estadio).
persona_de_a(jose,palomino,estadio).
persona_de_a(pablo,aguarico,estadio).

sig_parada(palomino,estadio).
sig_parada(tingoMaria,palomino).
sig_parada(aguarico,tingoMaria).
sig_parada(plazaBolognesi,aguarico).
sig_parada(abancay,plazaBolognesi).
sig_parada(miguelGrau,abancay).
sig_parada(yerbatero,miguelGrau).
sig_parada(santaAnita,yerbatero).
sig_parada(volvo,santaAnita).
sig_parada(ceres,volvo).
sig_parada(santaClara,ceres).
sig_parada(plazaVeaChosica,santaClara).

%MOD_PAGO
paga(adulto,1).
paga(medio,0.5).

es(jose,adulto).
es(pablo,adulto).
es(jaime,adulto).
es(pedro,adulto).
es(escanor,adulto).
es(brian,adulto).
es(miguel,adulto).
es(diana,adulto).
es(jorge,adulto).
es(maria,adulto).
es(carlos,adulto).
es(susana,adulto).
es(nicolas,medio).

es(jenny,medio).
es(matias,medio).
es(martha,medio).
es(julio,medio).
es(alberto,medio).
es(adrian,medio).


%preguntas:
%1.listar personas que hablan ingles
hablan_x(P,A):-(es_hombre(P);es_mujer(P)),idioma_natal(P,A);idioma_aprendido(P,A).

%2.calcular la cantidad de personas que son jefes
jefes_cant(P):-findall(N,jefe(P),L),length(L,P).

%3.calcular el porcentaje que son jefes y  mujeres
cant_mujeres(P):-findall(N,es_mujer(P),L),length(L,P).
porcentaje_jefes_mujeres(R):-findall(N,(jefe(P),es_mujer(P)),L),length(L,P),cant_mujeres(A),R is P/A.
lista_jefes_mujeres(X):- es_mujer(X),jefe(X).

% 4.calcular la cantidad de hombres que pagan medio y suban en "x"
cant_hombres_pago_medio(P):-findall(N,(es(P,medio),es_hombre(P)),L),length(L,P).

% paradero 5.Calcular el porcentaje de hombres que suben en el paradero X
cant_hombres(P):-findall(N,es_hombre(P),L),length(L,P).
porc_hombres_paradero_suben(R,B):-cant_hombres(Y),findall(N,(es_hombre(P),persona_de_a(P,B,C)),L),length(L,X),R is X/Y.


% 6.Calcular el porcentaje de mujeres que su sueldo sea mayor a 3000
% soles
cant_mujeres(P):-findall(N,es_mujer(P),L),length(L,P).
mujeres_gana_mas_de(X,N):-es_mujer(X),su_sueldo_es(X,R),R>N.
cant_mujeres_gana_mas_de(X,N):-findall(N,mujeres_gana_mas_de(X,N),L),length(L,X).
porc_muj_ganan_mas(X,N):-cant_mujeres(A),cant_mujeres_gana_mas_de(B,N),X is B/A.

%===================================================

mas_sig_parada(X,Y):-sig_parada(X,Y).
mas_sig_parada(X,Y):-sig_parada(X,Z),mas_sig_parada(Z,Y).
paradero_anterior(X,Y):-sig_parada(Y,X).
mas_paradero_anterior(X,Y):-paradero_anterior(X,Y).
mas_paradero_anterior(X,Y):-paradero_anterior(X,Z),mas_paradero_anterior(Z,Y).


entre_paraderos(Z,X,Y):-mas_sig_parada(X,Z),mas_paradero_anterior(Y,Z).

quienes_suben_entre_dos_paraderos(A,X,Y):-mas_sig_parada(X,Z),mas_paradero_anterior(Y,Z),persona_de_a(A,Z,M).

%==============================================
%es_jefe_de(carlos,julio).
superior(X,Y):-es_jefe_de(X,Y).
superior(X,Y):-es_jefe_de(X,Z),superior(Z,Y).
