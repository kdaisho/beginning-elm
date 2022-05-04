module RandomNumber exposing (..)

import Html exposing (..)
import Random


type alias Model =
    Int


init : ( Model, Cmd msg )
init =
    ( 0, Cmd.none )


view : Model -> Html msg
view model =
    div []
        [ button [] [ text "Generate Random Number" ]
        , text (String.fromInt model)
        ]


type Msg
    = GenerateRandomNumber
    | NewRandomNumber Int


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateRandomNumber ->
            ( model, Random.generate NewRandomNumber (Random.int 0 100) )

        NewRandomNumber number ->
            ( number, Cmd.none )
