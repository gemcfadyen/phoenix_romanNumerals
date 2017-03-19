defmodule RomanNumerals.PageController do
  use RomanNumerals.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
