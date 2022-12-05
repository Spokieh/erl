-module(program).
-export([nonrek/1, test/1, test2/1, test3/1]).
-export([convert_length/1]).


%%lista generator
%%[1,2,3,4,5,6,7,8,9]

mult(A) ->
    A * 2.

%%nem rekurziv fuggvennyel valo bejaras
nonrek(L) when is_list(L) -> 
    %% ha a lista X edik eleme nagyobb mint 3 a akkor szorozza meg 2 vel
    [mult(X) || X <- L, X > 3];
nonrek(_) ->
    bad_arg.


test(A) ->
    if
        A == 1 ->
            io:format("~w egyenlo egy ~n", [A]);
        A > 1 ->
            io:format("~w nagyobb egy ~n", [A])
    end,
vege.

%%ha A egyenlo 1 el akkor 10 et kapunkn vissza ami a B erteke lesz
test2(A) ->
    B =
    if
        A == 1 ->
            10;
        A > 1 ->
            20
    end.

%%switch vagy case
convert_length(Length) ->
    case Length of 
        {centimeter, X} ->
            {inch, X / 2.54};
        {inch, Y} -> 
            {centimeter, Y * 2.54}
    end.

test3(A) -> 
    case A of
        1 -> egy;
        2 -> ketto;
        _ -> bad_arg
    end.