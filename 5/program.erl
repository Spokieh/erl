-module(program).
-export([call/2, testconcat/1, testappend/1, min/1, min1/2]).
-export([minimum/1]).
-export([idojaras/2]).


%[
%    {bp,20}, 
%    {eger, 18}, 
%    {debrecen, 15}
%]
%% double szetszedese
%% {Varos, Hom} = {eger, 10}
%% igy kapunk egy fokok tombot,
%[ Fok || {Vr, Fok} <- Idokep]

%% csak azokat rakjuk az uj tombbe ahol a fok > 10
%[Fok || {Vr, Fok} <- Idokep, Fok > 10]

%%magasabb rendu fuggvenyek - high order functions
%% futtato kornyezet futas kozben fogja alkalmazni

call(F, A) ->
    F(A).


testconcat(L) when is_list(L) ->
    lists:concat(L);
testconcat(_) ->
    hiba.


testappend(L) when is_list(L) ->
    lists:append(L);
testappend(_) ->
    hiba.


min([]) ->
    {error, empty_list};
min([Head|Rest]) ->
    min1(Head, Rest).

min1(Min, [Head | Rest ]) when Min < Head ->
    min1(Min, Rest);
min1(Min, [Head | Rest ]) when Min >= Head ->
    min1(Head, Rest);
min1(Min, []) ->
    Min.



minimum([]) -> io:format("can not find minimum of empty list~n");

minimum([H|T])  ->
        minimum(H, T).

minimum(Min, [H|T]) ->
        case Min < H of
                true -> minimum(Min, T);
                false -> minimum(H, T)
        end;

minimum(Min, []) -> Min.

    


%%works
idojaras(DB, [{V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras(DB + 1, Varosok);
idojaras(DB, []) ->
    DB;
idojaras(_,_) ->
    bad_arg.

