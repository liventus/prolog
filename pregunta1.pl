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
especialidades(	psiquiatría).
especialidades(	cardiología).
especialidades(	dermatología).
especialidades(	gastroenterología).
especialidades(	infectología).
especialidades(	medicina_intensivista).
especialidades(	medicina_general).
especialidades(	neumología).
especialidades(	odontologia).
especialidades(	alergología).

%medico tiene la especialidad
medico_especialidad(victor,psiquiatría).
medico_especialidad(jean,cardiología).
medico_especialidad(penny,dermatología).
medico_especialidad(tania,gastroenterología).
medico_especialidad(mike,infectología).
medico_especialidad(makoto,medicina_intensivista).
medico_especialidad(keiko,medicina_general).
medico_especialidad(peter,neumología).
medico_especialidad(heun,odontologia).
medico_especialidad(andrew,alergología).

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
enfermedad_sintoma(depresion,exceso_sueño).
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


