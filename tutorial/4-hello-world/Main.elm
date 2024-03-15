module Main exposing (main)

-- I am importing the Html.Attributes module, which has all the HTML attributes
-- we need. I am exposing the class attribute, which we can use for adding classes
-- to the Html elements.

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)


-- Now the main value has a div element which has a class of 'text-center'. Since 
-- we are using Bootstrap, this will make it so the child text node is centered. So
-- now the 'Hello, World!' message is centered

main : Html message
main = 
    div [ class "text-center" ] [ text "Hello, World!" ]