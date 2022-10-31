-module(part1).
-compile(export_all).

piso(40)  ->    1;   %% ( -> 40
piso(41)  ->   -1.  %% ) -> 41


buscar_piso([]) ->  0;

buscar_piso([H | T]) ->
    piso(H) + buscar_piso(T).

read_file() ->
  {ok, Binary} = file:read_file("input.txt"),
  L = string:tokens(erlang:binary_to_list(Binary), "\n"),
  [H|_] = L,
  H .

start() ->
    Lista = read_file(),
    test:buscar_piso(Lista).