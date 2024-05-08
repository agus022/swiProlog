% Hechos
es_un_mamifero(leon).
es_un_mamifero(tigre).
es_un_mamifero(perro).
es_un_mamifero(gato).
es_un_reptil(cocodrilo).
es_un_reptil(serpiente).
es_un_ave(pajaro).
es_un_ave(aguila).
es_un_pez(trucha).
es_un_pez(tiburon).

tiene_pelo(leon).
tiene_pelo(tigre).
tiene_pelo(perro).
tiene_pelo(gato).
tiene_escamas(cocodrilo).
tiene_escamas(serpiente).
tiene_plumas(pajaro).
tiene_plumas(aguila).
tiene_escamas(trucha).
tiene_escamas(tiburon).

% Directiva para suprimir advertencia
:- discontiguous tiene_escamas/1.

% Reglas
es_un_predador(X) :- es_un_mamifero(X), tiene_pelo(X).
es_un_predador(X) :- es_un_ave(X), tiene_plumas(X).
es_un_predador(X) :- es_un_reptil(X), tiene_escamas(X).

es_un_herbivoro(X) :- es_un_mamifero(X), not(tiene_pelo(X)).
es_un_herbivoro(X) :- es_un_ave(X), not(tiene_plumas(X)).
es_un_herbivoro(X) :- es_un_ave(X), es_un_predador(X).

es_un_omnivoro(X) :- es_un_mamifero(X), not(tiene_pelo(X)), not(es_un_herbivoro(X)).
es_un_omnivoro(X) :- es_un_ave(X), not(tiene_plumas(X)), not(es_un_herbivoro(X)).
es_un_omnivoro(X) :- es_un_reptil(X), not(tiene_escamas(X)), not(es_un_predador(X)), not(es_un_herbivoro(X)).

es_peludo(X) :- tiene_pelo(X).
no_es_peludo(X) :- tiene_plumas(X), not(tiene_pelo(X)).