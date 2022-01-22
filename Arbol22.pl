%HECHOS

%primer_nivel
progenitor_de(jhon,alice).
progenitor_de(marie,alice).
progenitor_de(jhon,grace).
progenitor_de(marie,grace).

progenitor_de(mario,victor).
progenitor_de(lucia,victor).

progenitor_de(lee,makoto).
progenitor_de(hana,makoto).
progenitor_de(lee,keiko).
progenitor_de(hana,keiko).

progenitor_de(abdul,kiara).
progenitor_de(irish,kiara).
progenitor_de(abdul,kaori).
progenitor_de(irish,kaori).

%segundo_nivel
progenitor_de(victor,jean).
progenitor_de(grace,jean).
progenitor_de(victor,tania).
progenitor_de(grace,tania).
progenitor_de(victor,leonard).
progenitor_de(grace,leonard).

progenitor_de(makoto,penny).
progenitor_de(kiara,penny).

progenitor_de(mike,heun).
progenitor_de(kiara,heun).
progenitor_de(mike,kyu).
progenitor_de(kiara,kyu).

%tercer_nivel
progenitor_de(jean,antony).
progenitor_de(rose,antony).
progenitor_de(jean,marilyn).
progenitor_de(rose,marilyn).

progenitor_de(peter,jessica).
progenitor_de(tania,jessica).
progenitor_de(peter,alicia).
progenitor_de(tania,alicia).

progenitor_de(leonard,rosa).
progenitor_de(penny,rosa).
progenitor_de(leonard,tony).
progenitor_de(penny,tony).
progenitor_de(leonard,beatriz).
progenitor_de(penny,beatriz).

progenitor_de(andrew,aldo).
progenitor_de(heun,aldo).

%cuarto_nivel
progenitor_de(jose,sara).
progenitor_de(marilyn,sara).

progenitor_de(tony,tina).
progenitor_de(jeny,tina).

progenitor_de(william,joseph).
progenitor_de(beatriz,joseph).
progenitor_de(william,alexandra).
progenitor_de(beatriz,alexandra).

%HOMBRES
es_hombre(jhon).
es_hombre(mario).
es_hombre(lee).
es_hombre(abdul).
es_hombre(victor).
es_hombre(makoto).
es_hombre(mike).
es_hombre(jean).
es_hombre(peter).
es_hombre(leonard).
es_hombre(andrew).
es_hombre(kyu).
es_hombre(antony).
es_hombre(jose).
es_hombre(tony).
es_hombre(william).
es_hombre(aldo).
es_hombre(joseph).

%MUJERES
es_mujer(marie).
es_mujer(lucia).
es_mujer(hana).
es_mujer(irish).
es_mujer(alice).
es_mujer(grace).
es_mujer(keiko).
es_mujer(kiara).
es_mujer(kaori).
es_mujer(rose).
es_mujer(tania).
es_mujer(penny).
es_mujer(heun).
es_mujer(marilyn).
es_mujer(jessica).
es_mujer(alicia).
es_mujer(rosa).
es_mujer(jeny).
es_mujer(beatriz).
es_mujer(sara).
es_mujer(tina).
es_mujer(alexandra).

%PAISES
es_pais_de(peru,america).
es_pais_de(argentina,america).
es_pais_de(colombia,america).
es_pais_de(mexico,america).
es_pais_de(inglaterra,europa).
es_pais_de(spain,europa).
es_pais_de(alemania,europa).
es_pais_de(italia,europa).
es_pais_de(japon,asia).
es_pais_de(corea,asia).
es_pais_de(china,asia).
es_pais_de(india,asia).

%NACIONALIDADES
pais_de_origen_es(tania,mexico).
pais_de_origen_es(jessica,mexico).
pais_de_origen_es(alicia,mexico).
pais_de_origen_es(antony,colombia).
pais_de_origen_es(marilyn,colombia).
pais_de_origen_es(sara,colombia).
pais_de_origen_es(rosa,argentina).
pais_de_origen_es(tony,argentina).
pais_de_origen_es(beatriz,argentina).
pais_de_origen_es(alexandra,argentina).
pais_de_origen_es(jose,peru).
pais_de_origen_es(jeny,peru).
pais_de_origen_es(tina,peru).
pais_de_origen_es(marie,inglaterra).
pais_de_origen_es(alice,inglaterra).
pais_de_origen_es(rose,inglaterra).
pais_de_origen_es(peter,inglaterra).
pais_de_origen_es(andrew,spain).
pais_de_origen_es(aldo,spain).
pais_de_origen_es(william,spain).
pais_de_origen_es(joseph,spain).
pais_de_origen_es(jhon,alemania).
pais_de_origen_es(grace,alemania).
pais_de_origen_es(jean,alemania).
pais_de_origen_es(leonard,alemania).
pais_de_origen_es(lucia,italia).
pais_de_origen_es(mario,italia).
pais_de_origen_es(victor,italia).
pais_de_origen_es(kiara,japon).
pais_de_origen_es(kaori,japon).
pais_de_origen_es(mike,corea).
pais_de_origen_es(penny,corea).
pais_de_origen_es(heun,corea).
pais_de_origen_es(kyu,corea).
pais_de_origen_es(lee,china).
pais_de_origen_es(makoto,china).
pais_de_origen_es(keiko,china).
pais_de_origen_es(hana,india).
pais_de_origen_es(abdul,india).
pais_de_origen_es(irish,india).

%idiomas
su_idioma_es(peru,spanish).
su_idioma_es(argentina,spanish).
su_idioma_es(colombia,spanish).
su_idioma_es(mexico,spanish).
su_idioma_es(inglaterra,ingles).
su_idioma_es(spain,spanish).
su_idioma_es(alemania,aleman).
su_idioma_es(italia,italiano).
su_idioma_es(japon,japones).
su_idioma_es(corea,coreano).
su_idioma_es(china,chino).
su_idioma_es(india,hindi).


%estudio_idioma
estudio_idioma(jhon,ingles).
estudio_idioma(tania,ingles).
estudio_idioma(makoto,japones).
estudio_idioma(mike,japones).
estudio_idioma(hana,chino).
estudio_idioma(victor,aleman).
estudio_idioma(leonard,coreano).
estudio_idioma(heun,spanish).







%-------------------------------
%personas que subieron y bajaron

subio_paredero(tony,huachipa).
subio_paredero(jean,vitarte).
subio_paredero(peter,santa_anita).
subio_paredero(tania,mexico).

bajo_paredero(tony,grau).
bajo_paredero(jean,bolognesi).
bajo_paredero(peter,venezuela).
bajo_paredero(tania,universitaria).

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



mb4(M,P):-mantes(X,P),bajo_paredero(M,X),es_mujer(M).
%-----------------------------




%--------------------------------sintomas de--------------------
%enfermedades
enfermedades(depresion).
enfermedades(coronaria).
enfermedades(acne).
enfermedades(gastritis).
enfermedades(fiebre_amarilla).
enfermedades(covid-19).
enfermedades(resfriado).
enfermedades(bronquitis).
enfermedades(caries).
enfermedades(asma).

%personas enfermas
enfermos(grace).
enfermos(mario).
enfermos(alexandra).
enfermos(kiara).
enfermos(kaori).
enfermos(lee).
enfermos(tina).
enfermos(rosa).
enfermos(jose).
enfermos(antony).

%medicos
medicos(victor).
medicos(jean).
medicos(penny).
medicos(tania).
medicos(mike).
medicos(makoto).
medicos(keiko).
medicos(peter).
medicos(heun).
medicos(andrew).

%especialidades
especialidades(	psiquiatria).
especialidades(	cardiologia	).
especialidades(	dermatologia).
especialidades(	gastroenterologia).
especialidades(	infectologia).
especialidades(	medicina_intensivista).
especialidades(	medicina_general).
especialidades(	neumologia).
especialidades(	odontologia).
especialidades(	alergologia).

%medico tiene la especialidad
medico_especialidad(victor,psiquiatria).
medico_especialidad(jean,cardiologia).
medico_especialidad(penny,dermatologia).
medico_especialidad(tania,gastroenterologia).
medico_especialidad(tania,gastroenterologia).

medico_especialidad(mike,infectologia).
medico_especialidad(makoto,medicina_intensivista).
medico_especialidad(keiko,medicina_general).
medico_especialidad(peter,neumologia).
medico_especialidad(peter,neumologia).

medico_especialidad(heun,odontologia).
medico_especialidad(andrew,alergologia).

%pacientes
paciente(jhon).
paciente(lee).
paciente(abdul).
paciente(victor).
paciente(makoto).
paciente(mike).
paciente(jean).
paciente(leonard).
paciente(andrew).
paciente(antony).
paciente(jose).
paciente(tony).
paciente(william).
paciente(aldo).
paciente(joseph).
paciente(lucia).
paciente(alice).
paciente(grace).
paciente(kiara).
paciente(kaori).
paciente(rose).
paciente(tania).
paciente(heun).
paciente(marilyn).
paciente(jessica).
paciente(alicia).
paciente(rosa).
paciente(jeny).
paciente(beatriz).
paciente(hanna).
paciente(alexandra).

%enfermedad atendido por la especilidad de
enfermedad_atendido_por(tuberculosis,neumologia).
enfermedad_atendido_por(gastritis,gastroenterologia).

enfermedad_atendido_por(victor,psiquiatria).
enfermedad_atendido_por(jean,cardiologia).
enfermedad_atendido_por(penny,dermatologia).
enfermedad_atendido_por(tania,gastroenterologia).
enfermedad_atendido_por(tania,gastroenterologia).

enfermedad_atendido_pord(mike,infectologia).
enfermedad_atendido_por(makoto,medicina_intensivista).
enfermedad_atendido_por(keiko,medicina_general).
enfermedad_atendido_por(peter,neumologia).
enfermedad_atendido_por(peter,neumologia).

enfermedad_atendido_por(heun,odontologia).
enfermedad_atendido_por(andrew,alergologia).



%personas enfermas
persona_enfermedad(grace,depresion).
persona_enfermedad(mario,coronaria).
persona_enfermedad(alexandra,acne).
persona_enfermedad(kiara,gastritis).
persona_enfermedad(kaori,fiebre_amarilla).
persona_enfermedad(lee,covid_19).
persona_enfermedad(tina,resfriado).
persona_enfermedad(rosa,bronquitis).
persona_enfermedad(jose,caries).
persona_enfermedad(antony,asma).
persona_enfermedad(antony,asma).
%------------------------------------------------------------------------------------


%formular las preguntas
%recursividad de progenitor

%recursividad de padres

%los hijos de FULANO que hablan idioma FULANES.


%cantidad de los hijos de FULANO que hablan idioma FULANES.


%porcentaje de la cantidad de los hijos de FULANO que hablan idioma FULANES. sobre el total

%hijos de FULANO que hablaron FULANES  y que subieron entre padero primer paradero y ultimo

%porceentaje de las personas que sean medicos

%RELACIONES_FAMILIARES
hijo_de(Y,X):-progenitor_de(X,Y).
padre_de(X,Y):-es_hombre(X),progenitor_de(X,Y).
madre_de(X,Y):-es_mujer(X),progenitor_de(X,Y).


%descendientes
%PREGUNTA_01
% Listar los nombres de las personas que hablan un idioma determinado
% Por ejemplo
% hablan (X,frances), la salida seria los nombres de las personas que hablan francés.
lpi(L):-L=[].
inserta(C,lpi,[C|lpi]).

habla1(X,Idioma):-pais_de_origen_es(X,Pais),su_idioma_es(Pais,Idioma).
habla2(X,Idioma):-progenitor_de(Y,X),pais_de_origen_es(Y,Pais),su_idioma_es(Pais,Idioma).
habla3(X,Idioma):-estudio_idioma(X,Idioma).

hablan(X,Idioma):-setof(Y,habla1(X,Idioma);habla2(X,Idioma);habla3(X,Idioma),Y).

f(PADRE,IDIOMA,HIJO):-progenitor_de(PADRE,HIJO),hablan(HIJO,IDIOMA).

%conc(A,B,C) :- A=[], C=B.
%conc(A,B,C) :- A=[X|D], conc(D,B,E), C=[X|E].
hablan2(X,Idioma):-setof((habla1(X,Idioma);habla2(X,Idioma));habla3(X,Idioma)).
hablan3(X,Idioma):-habla1(X,Idioma);setof(X,habla2(X,Idioma),L);setof(X,habla3(X,Idioma),L).

hablancorregido(X,Idioma):-habla1(X,Idioma);habla2(X,Idioma).
%hablan(X,Idioma):-habla1(X,Idioma);habla2(X,Idioma);habla3(X,Idioma).
%hablan1(X,Idioma):-conc(X,habla1(X,Idioma),habla2(X,Idioma)).
%hablan(X,Idioma):-conc(X,hablan1(X,Idioma),habla3(X,Idioma)).
nhablan(X,Idioma):-findall(N,hablan(X,Idioma),L),length(L,X).

%cant_hombres(X):-findall(N,es_hombre(X),L),length(L,X).

%lISTAR LOS NOMBRES DE LAS HIJAS DE PEDRO QUE HABLAN INGL�S
hijas_de_x_que_hablan_i(Y,X,Idioma):-hijo_de(Y,X),es_mujer(Y),habla1(Y,Idioma);hijo_de(Y,X),es_mujer(Y),habla2(Y,Idioma);hijo_de(Y,X),es_mujer(Y),habla3(Y,Idioma).

hijas_de_x_que_hablan_i(Y,X,Idioma):-hijo_de(Y,X),es_mujer(Y),habla1(Y,Idioma);hijo_de(Y,X),es_mujer(Y),habla2(Y,Idioma);hijo_de(Y,X),es_mujer(Y),habla3(Y,Idioma).

%hijos de P que hablan X
hijos_de_que_hablan(X,Progenitor,Idioma):-hijo_de(X,Progenitor),hablan(X,Idioma).


f1(PADRE,IDIOMA,HIJO):-progenitor_de(PADRE,HIJO),hablan(HIJO,IDIOMA).
f2(PADRE,IDIOMA,HIJO):-progenitor_de(PADRE,HIJO),hablan2(HIJO,IDIOMA).
f3(PADRE,IDIOMA,HIJO):-progenitor_de(PADRE,HIJO),hablan3(HIJO,IDIOMA).
f4(PADRE,IDIOMA,HIJO):-progenitor_de(PADRE,HIJO),setof(HIJO,hablan(HIJO,IDIOMA),L).
%f(pedro,ingles,X).

frk2(X,Y,Z,P):-progenitor_de(X,Y),setof(Y,hablan(Y,Z),L),setof(Y,hablan(Y,P),L).
%frk2(juan,Z,español,aleman).

leg_desc(X,Y,K):-descendiente(R1,Y),lengua(R2,R1),mismo(R2,K),mismo(R1,X).


desc_hablan(X,Y,K):-findall(R,leg_desc(R,Y,K),T),my_compress(T,X).

hijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-desc(PADRE,HIJOS),(idioma(HIJOS,IDIOMA1);idioma(HIJOS,IDIOMA2)).

nhijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-setof(Z,hijos_habla(PADRE,IDIOMA1,IDIOMA2,Z),HIJOS).

nprogenitor(PADRE,L_HIJO):- setof(Z,progenitor_de(PADRE,Z),L_HIJO).

%------------------------------------------------------------------------------------
%pregunta 1
%1.	Listar las personas que tienen síntomas de GASTRITIS y hablan INGLES ………..…….. (6, 4)
personas_con_gastritis_y_hablan_ingles(PERSONAS,gastritis,ingles):-persona_enfermedad(PERSONAS,gastritis),hablan3(PERSONAS,ingles).
personas_con_gastritis_y_hablan_ingles(PERSONAS,X,Y):-persona_enfermedad(PERSONAS,X),hablan3(PERSONAS,Y).
%

%pregunta 4
%---------------------------------------------------------------------------------
enfermedad_sintoma(covid-19,fiebre).
enfermedad_sintoma(covid-19,tos).
enfermedad_sintoma(covid-19,cansancio).
enfermedad_sintoma(resfriado,esturnudos).
enfermedad_sintoma(resfriado,moqueo).
enfermedad_sintoma(asma,falta_de_aire).
enfermedad_sintoma(asma,dolor_pecho).
enfermedad_sintoma(bronquitis,dolor_pecho).
enfermedad_sintoma(bronquitis,cansancio).
enfermedad_sintoma(bronquitis,dolor_garganta).
enfermedad_sintoma(coronaria,dolor_pecho).
enfermedad_sintoma(acne,espinillas).
enfermedad_sintoma(depresion,exceso_suenio).
%----------------------------------------------

enfermedad_sintoma(gastritis,dolor_abdomen).
enfermedad_sintoma(gastritis,nauseas).
enfermedad_sintoma(gastritis,vomito).
enfermedad_sintoma(gastritis,sensacion_llenura).
enfermedad_sintoma(gastritis,inepentencia).
enfermedad_sintoma(gastritis,adelgazamiento).
%--------------------------------------------------
enfermedad_sintoma(fiebre_amarilla,fiebre).
enfermedad_sintoma(caries,dolor_muela).
%-----------------------------------------------------------------
enfermedad_sintoma(tuberculosis, debilidad).
enfermedad_sintoma(tuberculosis, fatiga).
enfermedad_sintoma(tuberculosis, perdida_peso).
enfermedad_sintoma(tuberculosis, falta_apetito).
enfermedad_sintoma(tuberculosis, escalofrios).
enfermedad_sintoma(tuberculosis, fiebre).
enfermedad_sintoma(tuberculosis, sudores_nocturnos).
%--------------------------------------------------

paciente_con_sintomas(julia,escalofrios).
paciente_con_sintomas(julia,fiebre).
paciente_con_sintomas(julia,debilidad).
paciente_con_sintomas(julia,perdida_peso).
paciente_con_sintomas(julia,fiebre).
paciente_con_sintomas(julia,nauseas).

paciente_con_sintomas(jorge,perdida_peso).
paciente_con_sintomas(julia,fatiga).

paciente_con_sintomas(samuel,dolor_abdomen).
paciente_con_sintomas(samuel,nauseas).
paciente_con_sintomas(samuel,vomito).
paciente_con_sintomas(samuel,sensacion_llenura).

paciente_con_sintomas(ana,debilidad).
paciente_con_sintomas(ana,fatiga).
paciente_con_sintomas(samuel,perdida_peso).
paciente_con_sintomas(samuel,falta_apetito).
paciente_con_sintomas(samuel,escalofrios).

%numerar los pacientes con enfermos

% a) listar los pacientes con las enfermedades que sufren

% cantidad_de_pacientes_con_enfermedades(X):-findall(N,persona_enfermedad(Z,Y),L),length(L,X).

contablizar_sintomas(ENFERMEDAD,X):-findall(N,(enfermedad_sintoma(ENFERMEDAD,Z)),L),length(L,X).

contablizar_enfermedad(X,Y):-findall(N,(paciente_con_sintomas(M,Z),enfermedad_sintoma(Z,Y)),L),length(L,X).

contablizar(X,Y,M):-findall(N,(paciente_con_sintomas(M,Z),enfermedad_sintoma(Y,Z)),L),length(L,X).

porc_de_sintomas(R,ENFERMEDAD,PACIENTE):-contablizar_sintomas(ENFERMEDAD,X),contablizar(P,ENFERMEDAD,PACIENTE),R is P/X.

paciente_enfermo(PACIENTE,ENFERMEDAD,Y):-porc_de_sintomas(R,ENFERMEDAD,PACIENTE),R>0.5, Y = ENFERMEDAD .

lista_de_personas_enfermas(PACIENTE,Y):-paciente_con_sintomas(PACIENTE,SINTOMAS),enfermedad_sintoma(ENFERMEDAD,SINTOMAS),paciente_enfermo(PACIENTE,ENFERMEDAD,Y).

lista-de_personas_enfermas_sin_repitencias(PACIENTE,Y):-setof(Y,lista_de_personas_enfermas(PACIENTE,Y),Y).






listar_paciente(X,Y,M):-(paciente_con_sintomas(M,Z),enfermedad_sintoma(Y,Z)).





contablizar_enfermedad3(X,Y,Z):-setof(N,(paciente_con_sintomas(M,Z),enfermedad_sintoma(Y,Z)),L),length(L,X).



porc_hombres_paradero_suben(R,B):-cant_hombres(Y),findall(N,(es_hombre(P),persona_de_a(P,B,C)),L),length(L,X),R is X/Y.


%listar_las_pesonas_que_sufren(PERSONAS,):-.

% b) indicar cuantos pacientes enfermos existen 
%usaremos la funcion persona_enfermedad y contablizar.  
cantidad_de_pacientes_con_enfermedades(X):-findall(N,persona_enfermedad(Z,Y),L),length(L,X).




%1.	Listar las personas que tienen síntomas de GASTRITIS y hablan INGLES ………..…….. (6, 4)
% cant_hablan(X,Y):-nhablan(Z,Y),length(Z,X).   nhablan(X,Idioma):-findall(N,persona_enfermedad(Z,Y),L),length(L,X).
%cantidad_de_pacientes_con_enfermedades(X):-findall(N,persona_enfermedad(Z,Y),L),length(L,X).


% Contar cuantos pacientes deben ser atendidos por el NEUMOLOGO


%1.	Listar las personas que tienen síntomas de GASTRITIS y hablan INGLES ………..…….. (6, 4)

personas_con_gastritis_y_hablan_ingles(PERSONAS,gastritis,ingles):-persona_enfermedad(PERSONAS,gastritis),hablan3(PERSONAS,ingles).
personas_con_gastritis_y_hablan_ingles(PERSONAS,X,Y):-persona_enfermedad(PERSONAS,X),hablan3(PERSONAS,Y).%


%2. Contar cuantos pacientes deben ser atendidos por el NEUMOLOGO …………….…….. (12, 10)

%3. Listar los nombres de los médicos cuyos pacientes hablan más de dos idiomas ..... (15, 12)

%4. Considerando que un paciente sufre de una enfermedad solo si tiene más del 50% de los
    %síntomas respectivos
    % a) listar los pacientes con las enfermedades que sufren……………………………………………… (10, 8)
    % b) indicar cuantos pacientes enfermos existen ……………………………………………………….…… (10, 8)
