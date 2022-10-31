-module(part2).
-compile(export_all).

piso(40)  ->   1;   %% ( -> 40    
piso(41)  ->  -1.   %% ) -> 41


buscar_piso(A,_,[]) ->  
    0,
    io:format(" ~p~n", [A]);

buscar_piso(A,-1,_) ->  
    0,
    io:format(" ~p~n", [A]);

buscar_piso(A, R, [H | T]) when R > -1 
    -> 
        A1 = A + 1,
        R1 = R + piso(H),
        buscar_piso(A1, R1, T)
    .

read_file() ->
  {ok, Binary} = file:read_file("input.txt"),
  L = string:tokens(erlang:binary_to_list(Binary), "\n"),
  [H|_] = L,
  H .

start() ->
    Lista = read_file(),
    buscar_piso(0, 0, Lista)
    .