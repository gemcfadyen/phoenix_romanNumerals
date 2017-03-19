defmodule RomanNumerals.Router do
  use RomanNumerals.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RomanNumerals do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/romanNumerals", RomanNumeralController, :roman_numerals
    post "/convert", RomanNumeralController, :convert
    get "/display/", RomanNumeralController, :roman_numerals
    get "/display/:converted_numeral", RomanNumeralController, :display
  end

  # Other scopes may use custom stacks.
  # scope "/api", RomanNumerals do
  #   pipe_through :api
  # end
end
