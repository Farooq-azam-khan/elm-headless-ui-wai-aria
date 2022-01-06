module Icons exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Svg as Svg
import Svg.Attributes as SvgAttr


deleteActiveIcon : Html msg
deleteActiveIcon =
    Svg.svg
        [ attribute "{...props}" ""
        , SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2 text-violet-400"
        ]
        [ Svg.rect
            [ SvgAttr.x "5"
            , SvgAttr.y "6"
            , SvgAttr.width "10"
            , SvgAttr.height "10"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M3 6H17"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 6V4H12V6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        ]


deleteInactiveIcon : Html msg
deleteInactiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2 text-violet-400"
        ]
        [ Svg.rect
            [ SvgAttr.x "5"
            , SvgAttr.y "6"
            , SvgAttr.width "10"
            , SvgAttr.height "10"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M3 6H17"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 6V4H12V6"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]


moveActiveIcon : Html msg
moveActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M10 4H16V10"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M16 4L8 12"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 6H4V16H14V12"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        ]


moveInactiveIcon : Html msg
moveInactiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M10 4H16V10"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M16 4L8 12"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 6H4V16H14V12"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]


archiveActiveIcon : Html msg
archiveActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.rect
            [ SvgAttr.x "5"
            , SvgAttr.y "8"
            , SvgAttr.width "10"
            , SvgAttr.height "8"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.rect
            [ SvgAttr.x "4"
            , SvgAttr.y "4"
            , SvgAttr.width "12"
            , SvgAttr.height "4"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 12H12"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]


archiveInactiveIcon : Html msg
archiveInactiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.rect
            [ SvgAttr.x "5"
            , SvgAttr.y "8"
            , SvgAttr.width "10"
            , SvgAttr.height "8"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.rect
            [ SvgAttr.x "4"
            , SvgAttr.y "4"
            , SvgAttr.width "12"
            , SvgAttr.height "4"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 12H12"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]


dublicateInActiveIcon : Html msg
dublicateInActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M4 4H12V12H4V4Z"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 8H16V16H8V8Z"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]


dublicateActiveIcon : Html msg
dublicateActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M4 4H12V12H4V4Z"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        , Svg.path
            [ SvgAttr.d "M8 8H16V16H8V8Z"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        ]


chevronDownIcon : Html msg
chevronDownIcon =
    Svg.svg
        [ SvgAttr.class "w-5 h-5 ml-2 -mr-1 text-violet-200 hover:text-violet-100"
        , SvgAttr.fill "none"
        , SvgAttr.stroke "currentColor"
        , SvgAttr.viewBox "0 0 24 24"
        ]
        [ Svg.path
            [ SvgAttr.strokeLinecap "round"
            , SvgAttr.strokeLinejoin "round"
            , SvgAttr.strokeWidth "2"
            , SvgAttr.d "M19 9l-7 7-7-7"
            ]
            []
        ]


editActiveIcon : Html msg
editActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M4 13V16H7L16 7L13 4L4 13Z"
            , SvgAttr.fill "#8B5CF6"
            , SvgAttr.stroke "#C4B5FD"
            , attribute "strokewidth" "2"
            ]
            []
        ]


editInActiveIcon : Html msg
editInActiveIcon =
    Svg.svg
        [ SvgAttr.viewBox "0 0 20 20"
        , SvgAttr.fill "none"
        , SvgAttr.class "w-5 h-5 mr-2"
        ]
        [ Svg.path
            [ SvgAttr.d "M4 13V16H7L16 7L13 4L4 13Z"
            , SvgAttr.fill "#EDE9FE"
            , SvgAttr.stroke "#A78BFA"
            , attribute "strokewidth" "2"
            ]
            []
        ]
