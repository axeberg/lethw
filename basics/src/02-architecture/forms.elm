module App exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Char exposing (isDigit, isUpper, isLower)

main =
    Browser.sandbox { init = init, view = view, update = update }

-- MODEL

type alias Model = 
    { fullname: String
    , password: String
    , passwordRepeat: String
    , age: String
    , valid: Validation
    }

type Validation = 
  Empty
  | Valid
  | Invalid String

init : Model

init =
  { fullname = ""
  , password = ""
  , passwordRepeat = ""
  , age = ""
  , valid = Empty
  }

-- UPDATE
type Msg
    = Name String
    | Password String
    | PasswordRepeat String
    | Age String
    | Validate

update msg model =
    case msg of
        Name name ->
            { model | fullname = name }

        Password password ->
            { model | password = password }

        PasswordRepeat password ->
            { model | passwordRepeat = password }

        Age age ->
            { model | age = age }
        
        Validate -> 
            { model | valid = validate model }

validate: Model -> Validation
validate model =
  if String.length model.password < 8 then Invalid "Password needs to be at least 8 characters long"
  else if model.password /= model.passwordRepeat then Invalid "Passwords do not match"
  else if not (String.any isDigit model.password) then Invalid "Password needs to contain at least one number"
  else if not (String.any isUpper model.password) then Invalid "Password needs to contain at least one uppercase letter"
  else if not (String.any isLower model.password) then Invalid "Password needs to contain at least one lowercase letter"
  else Valid

-- VIEW
view : Model -> Html Msg
view model =
    div []
        [ viewInput "text" "Fullname" model.fullname Name
        , viewInput "text" "Password" model.password Password
        , viewInput "text" "Repeat password" model.passwordRepeat PasswordRepeat
        , button [ onClick Validate ] [ text "Send it" ]
        , viewValidation model
        ]

viewInput: String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [type_ t, placeholder p, value v, onInput toMsg] []

viewValidation: Model -> Html msg
viewValidation model =
  let 
    (color, message) =
      case model.valid of
        Valid -> ("green", "Valid")
        Invalid validationError -> ("red", validationError)
        Empty -> ("blue", "Enter all the details")
  in
    div [ style "color" color ] [ text message ]