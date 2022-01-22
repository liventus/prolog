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

%por_nacimiento
habla(hana,hindi).
habla(abdul,hindi).
habla(irish,hindi).
%por_ascendencia
habla(makoto,hindi).
habla(keiko,hindi).
habla(kiara,hindi).
habla(kaori,hindi).

%por_nacimiento
habla(lee,chino).
habla(makoto,chino).
habla(keiko,chino).
%por_ascendencia
habla(penny,chino).
%por_estudio
habla(hana,chino).

%por_nacimiento
habla(mike,coreano).
habla(penny,coreano).
habla(heun,coreano).
habla(kyu,coreano).
%por_ascendencia
habla(rosa,coreano).
habla(tony,coreano).
habla(beatriz,coreano).
habla(aldo,coreano).
%por_estudio
habla(leonard,coreano).

%por_nacimiento
habla(kiara,japones).
habla(kaori,japones).
%por_ascendencia
habla(penny,japones).
habla(heun,japones).
habla(kyu,japones).
%por_estudio
habla(makoto,japones).
habla(mike,japones).

%por_nacimiento
habla(lucia,italiano).
habla(mario,italiano).
habla(victor,italiano).
%por_ascendencia
habla(leonard,italiano).
habla(jean,italiano).
habla(tania,italiano).

%por_nacimiento
habla(jhon,aleman).
habla(grace,aleman).
habla(jean,aleman).
habla(leonard,aleman).
%por_ascendencia
habla(alice,aleman).
habla(tania,aleman).
habla(antony,aleman).
habla(marilyn,aleman).
habla(rosa,aleman).
habla(tony,aleman).
habla(beatriz,aleman).
%por_estudio
habla(victor,aleman).

%por_nacimiento
habla(marie,ingles).
habla(alice,ingles).
habla(rose,ingles).
habla(peter,ingles).
%por_ascendencia
habla(grace,ingles).
habla(antony,ingles).
habla(marilyn,ingles).
habla(jessica,ingles).
habla(alicia,ingles).
%por_estudio
habla(jhon,ingles).
habla(tania,ingles).

%por_nacimiento
habla(andrew,spanish).
habla(aldo,spanish).
habla(william,spanish).
habla(joseph,spanish).
habla(tania,spanish).
habla(jessica,spanish).
habla(alicia,spanish).
habla(antony,spanish).
habla(marilyn,spanish).
habla(sara,spanish).
habla(rosa,spanish).
habla(tony,spanish).
habla(beatriz,spanish).
habla(alexandra,spanish).
habla(jose,spanish).
habla(jeny,spanish).
habla(tina,spanish).
%por_ascendencia
%por_estudio
habla(heun,spanish).



%estudio_idioma
estudio_idioma(jhon,ingles).
estudio_idioma(tania,ingles).

estudio_idioma(makoto,japones).
estudio_idioma(mike,japones).

estudio_idioma(hana,chino).

estudio_idioma(victor,aleman).

estudio_idioma(leonard,coreano).

estudio_idioma(heun,spanish).








%RELACIONES_FAMILIARES
hijo_de(Y,X):-progenitor_de(X,Y).
padre_de(X,Y):-es_hombre(X),progenitor_de(X,Y).
madre_de(X,Y):-es_mujer(X),progenitor_de(X,Y).

%PREGUNTA_01
%Listar_los_nombres_de_las_personas_que_hablan_un_idioma_determinado

%HABLAN_IDIOMA
habla_idioma(X,W):-pais_de_origen_es(X,Y),su_idioma_es(Y,W);progenitor_de(Y,X),pais_de_origen_es(Y,Z),su_idioma_es(Z,W);estudio_idioma(X,W).

%Listar_hindi
%H=[hana,abdul,irish,makoto,keiko,kiara,kaori].
%Listar_Chino
%C=[lee,makoto,keiko,penny,hana].
%Listar_Coreano
%K=[mike,penny,heun,kyu,rosa,tony,beatriz,aldo,leonard].
%Listar_Japones
%J=[kiara,kaori,penny,heun,kyu,makoto,mike].
%Listar_Italiano
%I=[lucia,mario,victor,leonard,jean,tania].
%Listar_Aleman
%A=[jhon,grace,jean,leonard,alice,tania,antony,marilyn,rosa,tony,beatriz,victor].
%Listar_Ingles
%E=[marie,alice,rose,peter,grace,antony,marilyn,jessica,alicia,jhon,tania].
%Listar_Espaniol
%S=[andrew,aldo,william,joseph,tania,jessica,alicia,antony,marilyn,sara,rosa,tony,beatriz,alexandra,joseph,jeny,tina,heun].


%hablan_hindi(H):-H=[X|Y],write(X),nl,hablan_hindi(Y).
hablan_hindi(X)

%PREGUNTA_02
%Determinar_la_cantidad_de_personas_que_hablan_un_idioma_determinado
%ZISE_LISTA


%CANTIDAD_HABLAN_IDIOMA_W










