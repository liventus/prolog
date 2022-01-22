









f(PADRE,IDIOMA,HIJO):-progenitor(PADRE,HIJO),idioma(HIJO,IDIOMA).

hijos_dos_idiomas(HIJO,PADRE,IDIOMA1,IDIOMA2):-progenitor(PADRE,HIJO),idiomas_persona(HIJO,IDIOMA1),idiomas_persona(HIJO,IDIOMA2).

frk2(X,Y,Z,P):-progenitor(X,Y),setof(Y,personahabla(Y,Z),L),setof(Y,personahabla(Y,P),L).
%frk2(juan,Z,español,aleman).

leg_desc(X,Y,K):-descendiente(R1,Y),lengua(R2,R1),mismo(R2,K),mismo(R1,X).

desc_hablan(X,Y,K):-findall(R,leg_desc(R,Y,K),T),my_compress(T,X).

hijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-desc(PADRE,HIJOS),(idioma(HIJOS,IDIOMA1);idioma(HIJOS,IDIOMA2)).

nhijos_habla(PADRE,IDIOMA1,IDIOMA2,HIJOS):-setof(Z,hijos_habla(PADRE,IDIOMA1,IDIOMA2,Z),HIJOS).

nprogenitor(PADRE,L_HIJO):- setof(Z,progenitor(PADRE,Z),L_HIJO).