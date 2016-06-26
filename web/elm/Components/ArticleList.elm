module Components.ArticleList exposing (view)

import Html exposing (Html, text, div, h2, ul, li)
import Html.Attributes exposing (class)

import List
import Article

articles : List Article.Model
articles =
  [ { title = "Article 1", url = "http://www.google.com", postedBy = "Author 1", postedOn = "07/01/2016" },
    { title = "Article 2", url = "http://www.google.com", postedBy = "Author 2", postedOn = "07/02/2016" },
    { title = "Article 3", url = "http://www.google.com", postedBy = "Author 3", postedOn = "07/03/2016" } ]


renderArticle : Article.Model -> Html a
renderArticle article =
  li [] [ Article.view article ]

renderArticles : List (Html a)
renderArticles =
  List.map renderArticle articles

view : Html a
view =
  div [class "article-list"] [
     h2 [] [text "Article List"],
     ul [] renderArticles
  ]

