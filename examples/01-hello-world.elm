-- This is single line comment in elm
{- 
    This is how yo
    write multi-line ecomments
    in Elm
-}

module Main exposing (main)

-- We're imoprting the HTML module the text value available in our file, so we can just reference it we want

import Html exposing (text)

-- The main value manages what gets displayed on the page. If we set the main 
--value to (text 'Hello, World!') , then a text node with string "Hello World "
-- will display on the page

main = 
        text "Hello, World!"