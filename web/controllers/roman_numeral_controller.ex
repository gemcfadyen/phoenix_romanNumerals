defmodule RomanNumerals.RomanNumeralController do
  use RomanNumerals.Web, :controller

  def roman_numerals(conn, _params) do
    render conn, "numerals.html"
  end

  def convert(conn, %{"decimal" => decimal}) do
    converted_numeral = translate_input_to_number(decimal)
                        |> RomanNumerals.Translator.convert

    redirect conn, to: roman_numeral_path(conn, :display, converted_numeral)
  end

  def display(conn, converted_numeral) do
    render conn, "converted.html", converted_numeral: converted_numeral
  end

  defp translate_input_to_number(input) do
    result = Integer.parse(input)

    case result do
      {integer, _} -> integer
      :error -> 0
    end
  end
end
