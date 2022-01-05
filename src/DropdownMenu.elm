module DropdownMenu exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)



-- Implementation


type MenuItemStatus
    = Active
    | Inactive -- can i add disabled?


type MenuStatus
    = MenuIsOpen
    | MenuIsClose


type alias Menu msg =
    { menu_open_status : MenuStatus
    , content_when_menu_is_open : List (MenuItem msg)
    , menu_button : Html msg 
    }


type alias MenuItem msg =
    { status : MenuItemStatus
    , inactive_children : Html msg
    , active_children : Html msg
    , is_disabled : Bool
    }


aria_labelled_by = attribute "aria-labelledby" "headlessui-menu-items"
dropdown_menu :
    Menu msg
    -> Html msg
dropdown_menu menu_rec =
        let 
            first_item = case List.head menu_rec.content_when_menu_is_open of 
                                Just mi -> mi.active_children
                                Nothing -> div [] []
        in 
            case menu_rec.menu_open_status of
                    MenuIsOpen ->
                        div 
                            [] 
                            [ menu_rec.menu_button
                            , div 
                                [ aria_labelled_by
                                , attribute "role" "menu"
                                , attribute "tabindex" "0" 
                                ] (List.map menu_item menu_rec.content_when_menu_is_open)
                            ]
                    MenuIsClose ->
                        div []
                            [ menu_rec.menu_button ]



menu_item :
    MenuItem msg
    -> Html msg 
menu_item menu_item_record =
    let 
        disabled_aria = if menu_item_record.is_disabled 
                            then attribute "aria-disabled" "true"
                            else attribute "aria-disabled" "false"
    in 
        case menu_item_record.status of
            Active ->
                div 
                    [ attribute "role" "menuitem"
                    , attribute "tabindex" "-1"
                    ] [menu_item_record.active_children]

            Inactive ->
                div 
                    [ attribute "role" "menuitem"
                    , attribute "tabindex" "-1"
                    ] [menu_item_record.inactive_children]


