-module(list).
-export([lista/2, lista/1]).

%%listat szeretnenk bejarni
%%megadhatunk egy listat, az elso elemmel igazabol nem is foglalkozunk, a therestbe amit megkap azt megkapja a lista megint rekurzivan
%%[1, 2, 3, 4, 5]
%%a lista elso elemet belerakja az osszegbe. list:lista(0, [1, 2, 3, 4, 5]).
lista(Osszeg, [Elem | TheRest]) ->
    lista(Osszeg + Elem, TheRest);
lista(Osszeg, []) -> 
    Osszeg;
lista(Osszeg, _) -> 
    Osszeg.


%%igy megtudjuk hivni a listat csak lista parameterrel, mert az meghivja sajat magat
lista(L) -> 
    lista(0, L).