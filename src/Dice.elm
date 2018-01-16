module Main exposing (..)

import Html exposing (..)
import Html.Attributes
import Html.Events exposing (..)
import List
import Random
import Svg exposing (..)
import Svg.Attributes exposing (..)


main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { dieFace1 : Int
    , dieFace2: Int
    }


init : ( Model, Cmd Msg )
init =
    ( Model 1 2, Cmd.none )



-- UPDATE
type Msg
    = Roll
    | NewFace1 Int
    | NewFace2 Int


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate NewFace1 (Random.int 1 6) )

        NewFace1 newFace ->
            ( { model | dieFace1 = newFace }, Random.generate NewFace2 (Random.int 1 6) )
        
        NewFace2 newFace ->
            ( { model | dieFace2 = newFace}, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ Html.text (toString (model.dieFace1 + model.dieFace2)) ]
        , svg
            [ width "120", height "120", viewBox "0 0 120 120", fill "white", stroke "black", strokeWidth "3", Html.Attributes.style [ ( "padding-left", "20px" ) ] ]
            (List.append
                [ rect [ x "1", y "1", width "100", height "100", rx "25", ry "25" ] [] ]
                (svgCirclesForDieFace model.dieFace1)
            )
        , svg
            [ width "120", height "120", viewBox "0 0 120 120", fill "white", stroke "black", strokeWidth "3", Html.Attributes.style [ ( "padding-left", "20px" ) ] ]
            (List.append
                [ rect [ x "1", y "1", width "100", height "100", rx "25", ry "25" ] [] ]
                (svgCirclesForDieFace model.dieFace2)
            )
        , button [ onClick Roll ] [ Html.text "Roll" ]
        ]


svgCirclesForDieFace : Int -> List (Svg Msg)
svgCirclesForDieFace dieFace =
    case dieFace of
        1 ->
            [ circle [ cx "50", cy "50", r "10", fill "black" ] [] ]

        2 ->
            [ circle [ cx "25", cy "25", r "10", fill "black" ] []
            , circle [ cx "75", cy "75", r "10", fill "black" ] []
            ]

        3 ->
            [ circle [ cx "25", cy "25", r "10", fill "black" ] []
            , circle [ cx "50", cy "50", r "10", fill "black" ] []
            , circle [ cx "75", cy "75", r "10", fill "black" ] []
            ]

        4 ->
            [ circle [ cx "25", cy "25", r "10", fill "black" ] []
            , circle [ cx "75", cy "25", r "10", fill "black" ] []
            , circle [ cx "25", cy "75", r "10", fill "black" ] []
            , circle [ cx "75", cy "75", r "10", fill "black" ] []
            ]

        5 ->
            [ circle [ cx "25", cy "25", r "10", fill "black" ] []
            , circle [ cx "75", cy "25", r "10", fill "black" ] []
            , circle [ cx "25", cy "75", r "10", fill "black" ] []
            , circle [ cx "75", cy "75", r "10", fill "black" ] []
            , circle [ cx "50", cy "50", r "10", fill "black" ] []
            ]

        6 ->
            [ circle [ cx "25", cy "20", r "10", fill "black" ] []
            , circle [ cx "25", cy "50", r "10", fill "black" ] []
            , circle [ cx "25", cy "80", r "10", fill "black" ] []
            , circle [ cx "75", cy "20", r "10", fill "black" ] []
            , circle [ cx "75", cy "50", r "10", fill "black" ] []
            , circle [ cx "75", cy "80", r "10", fill "black" ] []
            ]

        _ ->
            [ circle [ cx "50", cy "50", r "50", fill "red", stroke "none" ] [] ]