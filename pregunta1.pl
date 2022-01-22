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
especialidades(	psiquiatr�a).
especialidades(	cardiolog�a).
especialidades(	dermatolog�a).
especialidades(	gastroenterolog�a).
especialidades(	infectolog�a).
especialidades(	medicina_intensivista).
especialidades(	medicina_general).
especialidades(	neumolog�a).
especialidades(	odontologia).
especialidades(	alergolog�a).

%medico tiene la especialidad
medico_especialidad(victor,psiquiatr�a).
medico_especialidad(jean,cardiolog�a).
medico_especialidad(penny,dermatolog�a).
medico_especialidad(tania,gastroenterolog�a).
medico_especialidad(mike,infectolog�a).
medico_especialidad(makoto,medicina_intensivista).
medico_especialidad(keiko,medicina_general).
medico_especialidad(peter,neumolog�a).
medico_especialidad(heun,odontologia).
medico_especialidad(andrew,alergolog�a).

%enfermedades sintoma
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
enfermedad_sintoma(depresion,exceso_sue�o).
enfermedad_sintoma(gastritis,intestino_irritable).
enfermedad_sintoma(fiebre_amarilla,fiebre).
enfermedad_sintoma(caries,dolor_muela).

%especialidad atiende enfermedades
especialidad_enfermedad().

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

