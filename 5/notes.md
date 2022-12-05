## High order function

```erlang
G = fun(X, Z) ->
    X * Z
end.

G(10,2).
```

nem egy fuggvenyt hivunk meg. hanem egy valtozohoz kotott fuggvenyt. mint addig
nem futtatja le amig, meg nem hivjuk. mint egy callback

### Futtatas parancssorban

program:call(fun(X)-> X + 3 end.,10).

https://gist.github.com/hhimanshu/311232844dc3a4c764e3
