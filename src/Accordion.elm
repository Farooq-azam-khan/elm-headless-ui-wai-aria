module Accordion exposing (AccordionRecord,toggle_open_close_record, get_accordion_list, Accordion(..),  MenuButtonActions(..), create_accordion)
import Html exposing (..)

type MenuButtonActions = OpenRecord | CloseRecord 
type Accordion a = 
    Accordion (List (AccordionRecord a))

type alias AccordionRecord a = 
    { header: Html a
    , panel: Html a
    , menu_button: MenuButtonActions
    , menu_button_style: Html a
    }
-- create_accordion : Html a -> Html a -> Html a -> Accordion a 
-- create_accordion header panel menu_button = Accordion [header panel menu_button (button [] [])]
create_accordion : List (AccordionRecord a) -> Accordion a 
create_accordion rec = Accordion rec 

get_accordion_list : Accordion a -> List (AccordionRecord a)
get_accordion_list (Accordion l) = l 

toggle_open_close_record : AccordionRecord a -> AccordionRecord a  
toggle_open_close_record ar =
    case ar.menu_button  of 
        CloseRecord -> {ar | menu_button = OpenRecord }
        OpenRecord -> {ar | menu_button = CloseRecord}