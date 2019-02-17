{-

   Every single program is broken down into three separate parts:

   * Model - hold the app state
   * Update - how the app state should and can be updated
   * View - represents the app state in HTML

   What I also learned is that these parts can (but doesn't have to) be contained in separate files,
   which are syntatically separated by the concept of modules.

   A module, is a concept in Elm which one can use to grow a codebase in a nice and structured way.
   Fundamentally, modules allows for code to be broken into multiple files.
-}
-- In order to further understand these concepts I started looking into how to create code that will use these concepts
-- Writing exposing (..) is used to define what a module should expose externally, (..) is wildcard in Elm meaning everything


module App exposing (..)

-- Imports in Elm are are used to pull in base modules of functionality that exists in Elm

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- Main method of the module, runs the code in the module
main =
    Browser.sandbox { init = init, view = view, update = update }

-- MODEL

-- Declares a strict type alias for values that should be stored in our model
type alias Model = Int

-- Assigns the type for the init argument which is used to set our initial model value to 0
init : Model
-- Changing this value to something else than an integer will not compile the module
init =
  0

-- UPDATE
-- Describe what will change the values in the model over time and how
type Msg
    = Increment
    | Decrement 
    | Reset

{- Describe how the changes should be persisted to the model value depending on
the type of action that was triggered from the view -}
update msg model =
    -- The elm equivalent of a switch-case
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0 -- no need to assign here since we're already doing that on line 51

-- VIEW
-- A function takes values of type Model and produces Html Msg values (HTML that can produce Msg values)
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "Decrement (-)" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "Increment (+)" ]
        , button [ onClick Reset ] [ text "Reset (set 0)" ]
        ]