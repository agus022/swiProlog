% ENFERMEDADES
enfermedad(gripe).
enfermedad(covid).
enfermedad(hepatitis).
enfermedad(intoxicacion).


% HECHOS
padece(pedro,gripe).
padece(pedro,hepatitis).
padece(juan,hepatitis).
padece(maria,gripe).
padece(carlos,intoxicacion).

sintoma(fiebre,gripe).
sintoma(fiebre,covid).
sintoma(cansancio,hepatitis).
sintoma(diarrea,intoxicacion).
sintoma(cansancio,gripe).

suprime(fiebre,aspirina).
suprime(diarrea,lomotil).

% REGLAS 
alivia(X) :- suprime(Y,X), sintoma(Y,Z), enfermedad(Z), write(Z).

tiene_enfermedad(X,Z) :- padece(X,Z).




% HECHOS
kardex(juan,espa,5).
kardex(pedro,ingles,9).

% VER TODAS LAS MATERIAS Z QUE REPROBO PERSONA X , SABEMOS QUE REPRUEBA POR QUE SU CALIF ES MENOR A 6  
reprobado(X,Z) :- kardex(X,Z,R),R<6.
