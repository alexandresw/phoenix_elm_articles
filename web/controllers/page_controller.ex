defmodule PhoenixElmArticles.PageController do
  use PhoenixElmArticles.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
