module Main exposing (..)

import Browser
import DropdownMenu exposing (..)
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)


-- testing api


type Msg
    = NoOp
    | ToggleMenuDropdown
    | ToggleMenuDropdown2


type alias Model =
    { menu_dropdown : MenuStatus, menu_dropdown2 : MenuStatus}


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


main =
    Browser.sandbox { init = init, update = update, view = view }


view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "some content here and there" ]
        , dropdown_with_active model.menu_dropdown2
        ]

aria_expanded : MenuStatus -> Attribute msg
aria_expanded menu_status = 
    case menu_status of
        MenuIsOpen -> attribute "aria-expanded" "true" 
        MenuIsClose -> attribute "aria-expanded" "false" 

aria_controls : Attribute msg
aria_controls = attribute "aria-controls" "headlessui-menu-items" 

dropdown_with_active menu_dropdown = 
    let 
        btn_txt = case menu_dropdown of 
                    MenuIsOpen -> "Options2 \\/" 
                    MenuIsClose -> "Options2 /\\"
        btn = button 
                [ onClick ToggleMenuDropdown2, type_ "button" 
                , aria_expanded menu_dropdown
                , aria_controls
                ] 
                [ text btn_txt 
                ]
    in 
        dropdown_menu
                { menu_open_status = menu_dropdown
                , menu_button = btn 
                , content_when_menu_is_open =
                        [  
                            { status = Active
                            , inactive_children = div [] [ text "Edit (inactive)" ]
                            , active_children = a [href "#"] [ text "Edit (active)" ]
                            , is_disabled = False
                            }
                        , 
                            { status = Inactive
                            , inactive_children = div [] [ text "Dublicate (inactive)" ]
                            , active_children = div [] [ text "Dublicate (active)" ]
                            , is_disabled = False
                            }
                        , 
                            { status = Inactive
                            , inactive_children = div [] [ text "Archive (inactive)" ]
                            , active_children = div [] [ text "Archive (active)" ]
                            , is_disabled = False
                            }
                        , 
                            { status = Inactive
                            , inactive_children = div [] [ text "Move (inactive)" ]
                            , active_children = div [] [ text "Move (active)" ]
                            , is_disabled = False
                            }
                        , 
                            { status = Inactive
                            , inactive_children = div [] [ text "Delete (inactive)" ]
                            , active_children = div [] [ text "Delete (active)" ]
                            , is_disabled = False
                            }
                        ]
                }
basic_dropdown menu_dropdown = 
    dropdown_menu
            { menu_open_status = menu_dropdown
            , menu_button = button  [ onClick ToggleMenuDropdown ] [ text "Options \\/" ]
            , content_when_menu_is_open =
                
                    [  
                        { status = Inactive
                        , inactive_children = div [] [ text "Edit (inactive)" ]
                        , active_children = div [] [ text "Edit (active)" ]
                        , is_disabled = False
                        }
                    , 
                        { status = Inactive
                        , inactive_children = div [] [ text "Dublicate (inactive)" ]
                        , active_children = div [] [ text "Dublicate (active)" ]
                        , is_disabled = False
                        }
                    , 
                        { status = Inactive
                        , inactive_children = div [] [ text "Archive (inactive)" ]
                        , active_children = div [] [ text "Archive (active)" ]
                        , is_disabled = False
                        }
                    , 
                        { status = Inactive
                        , inactive_children = div [] [ text "Move (inactive)" ]
                        , active_children = div [] [ text "Move (active)" ]
                        , is_disabled = False
                        }
                    , 
                        { status = Inactive
                        , inactive_children = div [] [ text "Delete (inactive)" ]
                        , active_children = div [] [ text "Delete (active)" ]
                        , is_disabled = False
                        }
                    ]
            }