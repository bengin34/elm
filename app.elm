modelue Main exposing (...)

import Html exposing ( beginnerProgram, button , div, text)
import Html.Events exposing (OnClcik)


-- 4 things are written every Elm app
-- 1. Model
initModel = 0


type Msg = Increment | Decrement

-- update function and message 
-- all the business logic inside of this function
update msg model = 
  case msg of 
  Increment -> 
    model + 1
  Decrement -> 
    model - 1



-- 
view model =
   div[]
   [ button [ onClick Decrement ] [ text "-" ]
   , div [] [ text (toString model) ]
   , button [ onclick Increment ] [ text "+" ]
   ]




main = beginnerProgram { model = model , view = view , update = update}

--  view function takes the model and returns it a value of type Html
-- elm has a virtual dom like react

-- update model gets a message and current model. do logic what you want. and gives a new model

-- main function is the entry point of the app. it takes the model, view and update function and returns a value of type Program

-- We define Msg and model values
-- We write Update View functions 
-- Elm does th rest! 

