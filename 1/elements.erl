-module(elements).
-export([double/1, convert/1, convertX/2]).

double(X) -> 
    X  * 2.

%%convert(D::integer(), inch::atom()). akkor csak az elso fut le, ha cm irok akkor mind2 lefut, ha egyik se akkor elszall
convert(D, inch) ->
    D / 2.54;
convert(D, cm) -> 
    D * 2.54;
convert(D, _) -> 
    D.

%%HF atvaltas km es miles kozott


%% ez egy double {1, 2}


convert({D, inch}) ->
    D / 2.54;
convert({D, cm}) -> 
    D * 2.54;
convert({D, _}) -> 
    D;
convert(_) -> 
    bad_parameter_error.


convertX(A, B) -> 
    {A * 2, B * 2}.