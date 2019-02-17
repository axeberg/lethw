module App exposing (..)

import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

main =
    Browser.sandbox { init = init, view = view, update = update }

-- MODEL

type alias Model = 
    { content: String
    }

init : Model

init =
  { content = "" }

-- UPDATE
-- Describe what will change the values in the model over time and how
type Msg
    = Change String

update msg model =
    case msg of
        Change newMessage ->
            { model | content = newMessage }

-- VIEW
-- A function takes values of type Model and produces Html Msg values (HTML that can produce Msg values)
view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Text to reverse here", value model.content, onInput Change ] []
        , div [] [ text (String.reverse model.content) ]
        ]