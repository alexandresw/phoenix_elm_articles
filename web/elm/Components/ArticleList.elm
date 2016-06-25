module Components.ArticleList exposing (view)

import Html exposing (Html, text, div, h2, ul, li)
import Html.Attributes exposing (class)

renderArticles : Html a
renderArticles =
  ul []
  [ li [] [ text "Article 1" ]
  , li [] [ text "Article 2" ]
  , li [] [ text "Article 3" ] ]

view : Html a
view =
  div [class "article-list"] [
     h2 [] [text "Article List"],
     renderArticles
  ]
