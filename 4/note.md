```earlang
if
    Condition 1 ->
        Action 1;
    Condition 2 ->
        Action 2;
    Condition 3 ->
        Action 3;
end
```

```earlang
test_if(A, B) ->
    A == 5 ->
        io:format(""A ==5~n", []),
        a_equals_5;
    B == 6 ->
        io:format(""B ==6~n", []),
        b_equals_6;
    A == 2, B == 3 -> %%this is AND
        io:format(""A ==2, B == 3~n", []) 1,
        a_equals_2_and_b_equals_3;
    A == 1; B == 8 -> %%this is OR
        io:format(""A ==1, B == 8~n", []) 1,
        a_equals_1_or_b_equals_8;
end
```
