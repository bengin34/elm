module Main exposing (main)

import Browser
import Html exposing (div,text)

add a b = a + b

init = 
    {
    value = 0,
    name = "Engin"
    }

view model = 
    div [] [text model.name]

update model = 
        model

main =
    Browser.sandbox 
    {
        init = init,
        view = view,
        update = update
    }