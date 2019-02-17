--- My attempts at writing Elm here --
{- So comments that go on multiple lines
are wrapped in curly brackets -}

-- Let's get started

import Html exposing (..)

repl_string = """
---- Elm 0.19.0 ----------------------------------------------------------------
Read <https://elm-lang.org/0.19.0/repl> to learn more: exit, help, imports, etc.
--------------------------------------------------------------------------------
> "hello"
"hello" : String

> "Hello" ++ "World!"
"HelloWorld!" : String

> "Hello " ++ "World!"
"Hello World!" : String

> 1+1
2 : number
> 2 - 3
-1 : number
> 5 * 2
10 : number
> 13 / 2
6.5 : Float
> 13 // 2
6 : Int
> 10 + 2 * 3
16 : number
> (10 + 2) * 3
36 : number

> isPositiveNumber n = n > 0
<function> : number -> Bool

> isPositiveNumber 131
True : Bool

> isPositiveNumber -333
False : Bool

> \n -> n < 0
<function> : number -> Bool

> (\n -> n < 0) -333
True : Bool

> (\n -> n < 0) 131
False : Bool

> if False then "not this" else "but this"
"but this" : String

> if True then "this" else "but not this"
"this" : String

> numberOfTheBeast number = \
|   if number == 666 then "It is indeed the number of the beast" else "No beasty here"
<function> : number -> String

> numberOfTheBeast 333
"No beasty here" : String

> numberOfTheBeast 666
"It is indeed the number of the beast" : String

> pokemon = ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"]
["Bulbasaur","Charmander","Squirtle","Pikachu"]
    : List String

> List.isEmpty pokemon
False : Bool

> List.reverse pokemon
["Pikachu","Squirtle","Charmander","Bulbasaur"]
    : List String

> List.length pokemon
4 : Int

> unDoubledNumbers = [2, 4, 6, 8]
[2,4,6,8] : List number

> List.reverse unDoubledNumbers
[8,6,4,2] : List number

> List.sort unDoubledNumbers
[2,4,6,8] : List number

> doubleNumber n = n * 2
<function> : number -> number

> List.map doubleNumber unDoubledNumbers
[4,8,12,16] : List number

> pokemon = { name = "Charmander", element = "Fire"}
{ element = "Fire", name = "Charmander" }
    : { element : String, name : String }

> pokemon.name
"Charmander" : String

> .name pokemon
"Charmander" : String

> isFirePokemon { element } = element == "Fire"
<function> : { a | element : String } -> Bool

> isFirePokemon pokemon
True : Bool

> isFirePokemon { name = "Pikachu", element = "Electricity" }
False : Bool

"""

main =
  div []
  [
    pre [] [text repl_string]
  ]