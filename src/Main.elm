module Main exposing (..)

import Browser
import DropdownMenu exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Icons exposing (..)



-- testing api


type Msg
    = NoOp
    | ToggleMenuDropdown
    | ToggleMenuDropdown2


type alias Model =
    { menu_dropdown : MenuStatus, menu_dropdown2 : MenuStatus }


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        ToggleMenuDropdown ->
            case model.menu_dropdown of
                MenuIsOpen ->
                    { model | menu_dropdown = MenuIsClose }

                MenuIsClose ->
                    { model | menu_dropdown = MenuIsOpen }

        ToggleMenuDropdown2 ->
            case model.menu_dropdown2 of
                MenuIsOpen ->
                    { model | menu_dropdown2 = MenuIsClose }

                MenuIsClose ->
                    { model | menu_dropdown2 = MenuIsOpen }


init : Model
init =
    { menu_dropdown = MenuIsClose, menu_dropdown2 = MenuIsOpen }


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


view : Model -> Html Msg
view model =
    div
        [ class "w-screen, h-screen bg-violet-500 flex items-center, justify-center" ]
        [ div [ class "w-56 text-right fixed top-16" ]
            [ dropdown_with_active model.menu_dropdown2 ]
        ]


dropdown_with_active : MenuStatus -> Html Msg
dropdown_with_active menu_dropdown =
    let
        btn_txt =
            case menu_dropdown of
                MenuIsOpen ->
                    "Options2 \\/"

                MenuIsClose ->
                    "Options2 /\\"

        btn =
            button
                [ onClick ToggleMenuDropdown2
                , type_ "button"
                , aria_expanded menu_dropdown
                , aria_controls
                , class "inline-flex justify-center w-full px-4 py-2 text-sm font-medium text-white bg-black rounded-md bg-opacity-20 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75"
                ]
                [ text btn_txt
                ]
    in
    dropdown_menu
        { menu_open_status = menu_dropdown
        , menu_button = btn
        , content_when_menu_is_open =
            div []
                [ div [ class "px-1 py-1" ]
                    [ menu_item
                        { status = Active
                        , inactive_children =
                            button
                                [ class "text-gray-900 group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ text "Edit (inactive)" ]
                        , active_children =
                            button
                                [ class "bg-violet-500 text-white group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ editActiveIcon
                                , text "Edit (active)"
                                ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children =
                            button
                                [ class "text-gray-900 group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ dublicateInActiveIcon, text "Dublicate (inactive)" ]
                        , active_children =
                            button
                                [ class "bg-violet-500 text-white group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ dublicateActiveIcon, text "Dublicate (active)" ]
                        , is_disabled = False
                        }
                    ]
                , div
                    [ class "px-1 py-1" ]
                    [ menu_item
                        { status = Inactive
                        , inactive_children =
                            button
                                [ class "text-gray-900 group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ archiveInactiveIcon, text "Archive (inactive)" ]
                        , active_children =
                            button
                                [ class "bg-violet-500 text-white group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ archiveActiveIcon, text "Archive (active)" ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children =
                            button
                                [ class "text-gray-900 group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ moveInactiveIcon, text "Move (inactive)" ]
                        , active_children =
                            button
                                [ class "bg-violet-500 text-white group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ moveActiveIcon, text "Move (active)" ]
                        , is_disabled = False
                        }
                    ]
                , div [ class "px-1 py-1" ]
                    [ menu_item
                        { status = Inactive
                        , inactive_children =
                            button
                                [ class "text-gray-900 group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ deleteInactiveIcon, text "Delete (inactive)" ]
                        , active_children =
                            button
                                [ class "bg-violet-500 text-white group flex rounded-md items-center w-full px-2 py-2 text-sm" ]
                                [ deleteActiveIcon, text "Delete (active)" ]
                        , is_disabled = False
                        }
                    ]
                ]
        }


aria_expanded : MenuStatus -> Attribute msg
aria_expanded menu_status =
    case menu_status of
        MenuIsOpen ->
            attribute "aria-expanded" "true"

        MenuIsClose ->
            attribute "aria-expanded" "false"


aria_controls : Attribute msg
aria_controls =
    attribute "aria-controls" "headlessui-menu-items"



-- basic_dropdown : MenuStatus -> Html Msg
-- basic_dropdown menu_dropdown =
--     dropdown_menu
--         { menu_open_status = menu_dropdown
--         , menu_button = button [ onClick ToggleMenuDropdown ] [ text "Options \\/" ]
--         , content_when_menu_is_open =
--             [ { status = Inactive
--               , inactive_children = div [] [ text "Edit (inactive)" ]
--               , active_children = div [] [ text "Edit (active)" ]
--               , is_disabled = False
--               }
--             , { status = Inactive
--               , inactive_children = div [] [ text "Dublicate (inactive)" ]
--               , active_children = div [] [ text "Dublicate (active)" ]
--               , is_disabled = False
--               }
--             , { status = Inactive
--               , inactive_children = div [] [ text "Archive (inactive)" ]
--               , active_children = div [] [ text "Archive (active)" ]
--               , is_disabled = False
--               }
--             , { status = Inactive
--               , inactive_children = div [] [ text "Move (inactive)" ]
--               , active_children = div [] [ text "Move (active)" ]
--               , is_disabled = False
--               }
--             , { status = Inactive
--               , inactive_children = div [] [ text "Delete (inactive)" ]
--               , active_children = div [] [ text "Delete (active)" ]
--               , is_disabled = False
--               }
--             ]
--         }
