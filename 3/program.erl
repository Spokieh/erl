-module(program).
-export([hossz/1, hossz/2, hossza/1, idojaras/1 ]).


%% feladatok:
%% minimum, maximum kivalasztast megcsinalni a hossz hossza mintajara
%% 

hossz([_ | V]) -> 
    1 + hossz(V);
hossz([]) ->
    0.

hossza(L) when is_list(L) -> 
    hossz(0,L);
hossza(_) ->
    bad_arg.

hossz(DB, [_ | Vege]) ->
    hossz(DB + 1, Vege);
hossz(DB, []) ->
   DB;
hossz(_,_) ->
    bad_arg.


%%[{bp,20}, {eger, 18}, {debrecen, 15}]
%%hogyan tudunk listaba beagyazott elemeket kezelni
%[
%    {bp,20}, 
%    {eger, 18}, 
%    {debrecen, 15}
%]

%io:format, igy kell kiirni a programban. pl console.write
%% ~n ez egy sortores
%% ~w parameter
idojaras([{V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras(Varosok);
idojaras([]) -> 
    %%io:format("~w A jelentes feldolgozasa lefutott mind ~w a varosra", [3]),
    end_of_process.
    %%alma.

%%idojaras([_ | _]) ->
%%    bad_arg.

%% valtozo letrhozas
%%18> Idokep = [{bp,20}, {eger, 12}, {debrecen, 10}].
%%[{bp,20},{eger,12},{debrecen,10}]
%%program:idojaras(Idokep).

%%idojarasos feladat szamolni, hogy hany darab varos volt
%%elements:idojaras(Idokep). egy darab lista
%%az osszeg segithet

idojaras([{V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras(Varosok);
idojaras([]) -> 
    %%io:format("~w A jelentes feldolgozasa lefutott mind ~w a varosra", [3]),
    end_of_process.
    %%alma.

%% nem jo
idojaras2([{V, C} | Varosok]) ->
    idojaras2(0, [{V, C} | Varosok]).

idojaras2(DB, [{V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras2(DB, + 1, Varosok);
idojaras2(DB, []) ->
    io:format("~w db varos volt", [DB]),
    end_of_process2.


%%from video not good either
idojaras(L) when is_list(L) ->
    Osszeg = idojaras(0,L);
idojaras(_) ->
    bad_arg.

idojaras(DB, [Eleje | Maradek]) when is_list(Eleje) ->
    idojaras(idojaras(DB, Eleje), Maradek);
idojaras(DB, [ {V, C} | Varosok]) ->
    io:format("~w varosban ~w fok van~n", [V, C]),
    idojaras(DB + 1 ,Varosok);
idojaras(DB, []) -> 
    DB.