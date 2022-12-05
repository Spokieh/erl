-module(program).
-export([f/1, g/0, g/1]).
%%fuggveny neve es hany parametere van F/1, a g-nek 0

%% f(10).
f(X) ->
    A = 2,
    A + X.

g() -> 10.

g(X) -> X + 10.