### lista

a nevu valtozo amiben van egy lista, a listaban van az 1, elem ami egy atom, egy double aminek az elemei 2 , 3, alma

A = [1, elem, {2,3,alma}].

#### elemek kivetele a listabol

mintaillesztest kell hasznalni

mi a mitna illesztes?

[B, C, D] = A.
az 1es belekerul a B valtozoba, az elem a C, be a double a D be

B kiiratasa

B. akkor az eredmeny az 1

C kiiratasa

C. kiirja hogy elem

ez a minta illesztes pattern matching, ha ugyan olyan elemszam van midn2 oldalon mukodik. ha nem akkor nem jo.

{E1, E2, E3} = D.

E1 = 2 | E2 = 3 | E3 = alma

[A1, B1, {C1, C2, C3}] = A

az A-ban szereplot 1:1 atrakja a baloldalba

f().

[1, 2, 3, 4,].

1, [2, 3, 4]. => [2, 3, 4]

2, [ 3, 4].

3, [ 4].

4, [].

az elso valtozoba beleraja az elso elemet. maradekba a maradek elemeket

[Elso | Maradek] = [1, 2, 3, 4,]. => Elso 1. Maradek [2, 3, 4]

[E] = [] mivel ures lista jobb oldalt igy nem jo

[] = [] ez viszont mukodik, ures lista

[E | V] = []. nem jo, mivel nincs maradek se,
