% Hechos: conexiones entre las diferentes celdas del laberinto.
conexion(a, b).
conexion(b, c).
conexion(c, d).
conexion(d, e).
conexion(e, f).
conexion(f, g).
conexion(b, h).
conexion(h, i).
conexion(i, j).
conexion(j, k).
conexion(k, l).
conexion(l, m).
conexion(i, n).
conexion(i, p).
conexion(p, q).

% Regla para verificar si dos celdas están conectadas directamente.
conectadas(X, Y) :- conexion(X, Y).
conectadas(X, Y) :- conexion(Y, X).

% Regla para encontrar un camino entre dos celdas.
camino(X, Y, Visitadas) :- 
    conectadas(X, Y),
    \+ member(Y, Visitadas). % Verifica que Y no esté en la lista de celdas visitadas.

camino(X, Y, Visitadas) :- 
    conectadas(X, Z),
    \+ member(Z, Visitadas), % Verifica que Z no esté en la lista de celdas visitadas.
    camino(Z, Y, [Z|Visitadas]). % Continúa buscando el camino desde Z a Y, añadiendo Z a la lista de visitadas.