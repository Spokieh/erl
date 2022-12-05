-module(idojaras).
-export([idojaras/1, idojaras/2]).

idojaras(L) when is_list(L) ->
    Osszeg = idojaras(0, L),
    io:format("A jelentes feldolgozasa lefutott mind a ~w varosra ~n", [Osszeg]);
idojaras(_) -> 
    bad_arg.

idojaras(DB, [Eleje | Vege]) when is_list(Eleje) ->
    idojaras(idojaras(DB,Eleje), Vege);
idojaras(DB, [{V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras(DB + 1, Varosok);
idojaras(DB, [Adat | Varosok]) -> 
    io:format("Hibas adat: ~w~n", [Adat]),
    idojaras(DB, Varosok);
idojaras(DB, []) -> 
    DB.
