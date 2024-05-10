% HECHOS 

esta_inscrito(juan,matematicas).
esta_inscrito(maria,historia_del_arte).
esta_inscrito(carlos,fisica).
esta_inscrito(ana,biologia_celular).
esta_inscrito(andres,quimica_organica).
esta_inscrito(sofia,filosofia).
esta_inscrito(laura,literatura_espaniola).
esta_inscrito(pedro,economia).
esta_inscrito(pablo,programacion_avanzada).
esta_inscrito(paula,ingles_avanzado).

% TIPO MATERIAS
tipo_materia(matematicas,ciencias).
tipo_materia(fisica,ciencias).
tipo_materia(biologia_celular,ciencias).
tipo_materia(quimica_organica,ciencias).
tipo_materia(programacion_avanzada,ciencias).
tipo_materia(economia,ciencias).

tipo_materia(historia_del_arte,humanidades).
tipo_materia(filosofia,humanidades).
tipo_materia(literatura_espaniola,humanidades).
tipo_materia(ingles_avanzado,humanidades).

% REGLAS 
alto_rendimiento(Y,Z) :- esta_inscrito(Y,X), tipo_materia(X,Z),  write(Z).
ser_creativos(Y,Z) :- esta_inscrito(Y,X), tipo_materia(X,Z),  write(Z).

% PREGUNTA 1
% esta_inscrito(pedro,X). 
% PREGUNTA 2
% alto_rendimiento(Y,ciencias) :- esta_inscrito(Y,X), tipo_materia(X,Z),  write(Z).
% PREGUNTA 3
% alto_rendimiento(Y,humanidades) :- esta_inscrito(Y,X), tipo_materia(X,Z),  write(Z).
% PREGUNTA 4
%
% PREGUNTA 5 
% esta_incscirto(X,ingles_avanzado).
% PREGUNTA 6
% esta_incscirto(maria,X).
% PREGUNTA 7 
% alto_rendimiento(Y,humanidades).
% PREGUNTA 8 
% esta_incscirto(X,literatura_espaniola).
% PREGUNTA 9 
% alto_rendimiento(Y,ciencias).
% PREGUNTA 10 
% 