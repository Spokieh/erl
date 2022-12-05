```erl
1> A = [1,2,3,4,5].
[1,2,3,4,5]
2> [X * 3 || X <- A, X > 2]
.
[9,12,15]
3> B = [{bp,20},{gy,15},{eger,5}].
[{bp,20},{gy,15},{eger,5}]
4> [Fok <- Y || {X, Y} <-B].
* 1: syntax error before: '<-'
4> [Fok || {X, Y} <-B].
* 1: variable 'Fok' is unbound
5> [Y || {X, Y} <-B].
[20,15,5]
6> [Vr || {Vr, Fk} <-B].
[bp,gy,eger]
7> [Vr || {Vr, Fk} <-B, Fk > 10].
[bp,gy]
```

G = fun(X, Z) -> X \* Z end.
G valtozoba kotott fuggveny

call(F,A) ->
F(A).

parancssor
main:call(fun(x) -> 3 end. 10)
output: 13

Z = fun(H) -> H + 4 end.
main:call(Z, 10).
output: 14
