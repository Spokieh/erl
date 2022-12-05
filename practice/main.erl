-module(main).
-export([double/1, convert/2,convert2/1, idojaras/1,idojaras/2, idojarasdb/1, lista/2, listasum/1, min/1, minseged/2]).
-export([nonrek/1]).
-export([call/2]).

double(X) ->
	X * 2.

convert(D,cm) ->
	D / 2.54;
convert(D, inch) ->
	D * 2.54;
convert(D,_) ->
	bad_erg.


convert2({D,cm}) ->
	D / 2.54;
convert2({D, inch}) ->
	D * 2.54;
convert2(_) ->
	bad_arg.

idojaras([{Varos, Fok}| Varosok]) ->
	io:format("~w varosban ~w fok van ~n",[Varos, Fok]),
	idojaras(Varosok);
idojaras([]) ->
	vege;
idojaras(_) ->
	bad_arg.

idojarasdb(L) -> 
	idojaras(0, L).
oidojaras(Db, [{Varos, Fok}| Varosok]) ->
	io:format("~w varosban ~w fok van ~n",[Varos, Fok]),
	idojaras(Db + 1, Varosok);
idojaras(Db, []) ->
	io:format("~w varost szamoltam ~n", [Db]),
	vege;
idojaras(_,_) ->
	bad_arg.

listasum(L) ->
	lista(0, L).

lista(Sum, [Head | Rest]) ->
	io:format("~w ~n",[Head]),
	lista(Sum + Head, Rest);
lista(Sum, []) ->
	io:format("~w a lista elemei osszeadva ~n", [Sum]);
lista(Sum, _) ->
	Sum.

min([]) ->
	empty_list;
min([Head | Rest]) ->
	minseged(Head, Rest).

minseged(Min, [Head | Rest]) when Min < Head ->
	minseged(Min, Rest);
minseged(Min, [Head | Rest]) when Min >= Head ->
	minseged(Head, Rest);
minseged(Min, []) ->
	Min.

%% 4 bol
%%mult(A) ->
%%	A * 2.

nonrek(L) when is_list(L) ->
	[X * 2 || X <- L, X > 3].
%%	[mult(X) || X <- L, X > 3].
nonrek(_) ->
	bad_arg.


call(Fuggveny, Adat) ->
	Fuggveny(Adat).
