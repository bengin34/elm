module Main exposing (main)


-- We've exposed 3 new values: sandbox, button, and onClick.
-- The first is sandbox, which will allow us to write an interactive
-- aplication instead of just static HTML file before. We've also exposed
--the button function, which will be displayed as a button element.
-- We are exposing the onClick function from the Html.Events module. We use
-- this smilarly to how we use the onClick attribute in native HTML.

import Browser exposing ( sandbox )
import Html exposing ( Html, button, div, text,)
import Html.Attributes exposing ( class )
import Html.Events exposing ( onClick )



-- We created a new type that we're calling Msg. The Msg type can only be 
-- the value of increment

type Msg 
    = increment





-- We are creating a type alias called Model. type aliases don't create a new
-- type, they just make it so the program is easier to understand.

type alias Model =
    Int



-- This is the view function. The view function takes the model, which is an 
-- integer, then returns an HTML element, which gets displayed on the screen.
-- Every time the model gets updated, the new value for the model will get passed
-- into the view function, which will output the HTML display.
-- So the view function simply just a pure function that takes in the  model 
-- state as an argument and returns the Html view that gets displayed on the page.

view model =
    div [ class "text-center" ]
        [ div [] [ text (String.fromInt model)]
        , button    
            -- The onclick funtion takes Increment value and will trigger an event
            -- whenever the user clicks on the button.
            -- When an event is triggered, the message value gets passed to the update
            -- functio, then the update function returns the new model state.
            -- So whenever a user clicks the button, the onClick event will get triggered
            -- which will pass the Increment value to the update function.
            [ class "btn btn-primary", onClick Increment ]
            [ text "+" ]
        ]


-- The update function will get called whenever an event is triggered. The message value
-- will be passed in as the first value and the current model state will be passed in as
-- the second value. The update funtion returns the new model state, which will be passed 
-- into the view function.

update msg model =
    -- Here we'


