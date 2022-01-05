module DropdownMenu exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)



-- Implementation


type MenuItemStatus
    = Active
    | Inactive


type MenuStatus
    = MenuIsOpen
    | MenuIsClose



-- TODO: add menu dropdown button


type alias Menu msg =
    { menu_open_status : MenuStatus
    , content_when_menu_is_open : Html msg
    }


type alias MenuItem msg =
    { status : MenuItemStatus
    , inactive_children : Html msg
    , active_children : Html msg
    , is_disabled : Bool
    }


dropdown_menu :
    Menu msg
    -> Html msg -- List (Attribute msg) -> List (Html msg) -> Html msg
dropdown_menu menu_rec =
    case menu_rec.menu_open_status of
        MenuIsOpen ->
            menu_rec.content_when_menu_is_open

        MenuIsClose ->
            text ""



-- TODO: show menu dropdown button


menu_button : List (Attribute msg) -> List (Html msg) -> Html msg
menu_button attr children =
    button attr children


active_menu_item : List (Attribute msg) -> List (Html msg) -> Html msg
active_menu_item attr children =
    div attr children


menu_item :
    MenuItem msg
    -> Html msg -- List (Attribute msg) -> List (Html msg) -> Html msg
menu_item menu_item_record =
    case menu_item_record.status of
        Active ->
            div [] [ text "active item" ]

        Inactive ->
            div [] [ text "inactive item" ]



-- API
-- view : model -> Html msg
-- view _ =
--     dropdown_menu
--         { menu_open_status = MenuIsClose
--         , content_when_menu_is_open =
--             div []
--                 [ menu_button [] [ text "more" ]
--                 , active_menu_item [] [ a [ href "#" ] [ text "Account Settings" ] ]
--                 , menu_item
--                     { status = Active
--                     , inactive_children = div [] [ text "inactive" ]
--                     , active_children = div [] [ text "active item" ]
--                     , is_disabled = False
--                     }
--                 , menu_item
--                     { status = Inactive
--                     , inactive_children = div [] [ text "comming soon" ]
--                     , active_children = div [] [ text "it's here" ]
--                     , is_disabled = True
--                     }
--                 ]
--         }
