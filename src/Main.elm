module Main exposing (..)

import Browser
import DropdownMenu exposing (..)
import Html exposing (..)
import Html.Events exposing (..)



-- testing api


type Msg
    = NoOp
    | ToggleMenuDropdown


type alias Model =
    { menu_dropdown : MenuStatus }


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


init : Model
init =
    { menu_dropdown = MenuIsOpen }


main =
    Browser.sandbox { init = init, update = update, view = view }


view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "some content here and there" ]
        , dropdown_menu
            { menu_open_status = model.menu_dropdown
            , content_when_menu_is_open =
                div
                    []
                    [ menu_button [ onClick ToggleMenuDropdown ] [ text "Options \\/" ]
                    , menu_item
                        { status = Inactive
                        , inactive_children = div [] [ text "Edit (inactive)" ]
                        , active_children = div [] [ text "Edit (active)" ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children = div [] [ text "Dublicate (inactive)" ]
                        , active_children = div [] [ text "Dublicate (active)" ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children = div [] [ text "Archive (inactive)" ]
                        , active_children = div [] [ text "Archive (active)" ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children = div [] [ text "Move (inactive)" ]
                        , active_children = div [] [ text "Move (active)" ]
                        , is_disabled = False
                        }
                    , menu_item
                        { status = Inactive
                        , inactive_children = div [] [ text "Delete (inactive)" ]
                        , active_children = div [] [ text "Delete (active)" ]
                        , is_disabled = False
                        }
                    ]
            }
        ]
