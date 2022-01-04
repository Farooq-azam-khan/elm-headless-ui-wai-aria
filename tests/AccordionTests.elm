module AccordionTests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Html exposing (..)
    
import Accordion exposing (AccordionRecord, toggle_open_close_record, Accordion, create_accordion, MenuButtonActions(..), get_accordion_list)


suite : Test
suite =
    describe "test suite"
        [ describe "accordion record tests  "
            [ test "create 1 record with header, panel, and close state" <| 
                \_ -> Expect.equal (List.length <| get_accordion_list (create_accordion [sample_accordion_record])) 1
            ]
        , describe "accoridion action"
            [ test "if close, open accordion record at 0"
                <| \_ -> 
                    Expect.equal
                        (create_accordion [sample_accordion_record]
                            |> get_accordion_list
                            |> List.head 
                            |> Maybe.withDefault sample_accordion_record
                            |> toggle_open_close_record
                        ).menu_button 
                        OpenRecord
                    
                    --  (Maybe.withDefault sample_accordion_record <| List.head <|  1

            ]

        ] 
sample_accordion_record : AccordionRecord a 
sample_accordion_record = {header = text "header", panel = text "panel", menu_button= CloseRecord, menu_button_style=button [] [text "close"]}