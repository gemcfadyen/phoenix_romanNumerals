defmodule RomanNumerals.Translator do

  def convert(decimal) do
    conversion = [
      {"M", 1000},
      {"CM", 900},
      {"D", 500},
      {"C", 100},
      {"XC", 90},
      {"L", 50},
      {"X", 10},
      {"IX", 9},
      {"V", 5},
      {"IV", 4},
      {"I", 1}
    ]
    calculate_numeral(decimal, conversion, [])
  end

  defp calculate_numeral(0, conversions, result), do: List.to_string(result)
  defp calculate_numeral(decimal, [{numeral, arabic} | tail] = all_numerals, result) do
    cond do
      decimal == arabic -> calculate_numeral(decimal - arabic, all_numerals, [result | numeral])
      decimal > arabic -> calculate_numeral(decimal - arabic, all_numerals, [result | numeral])
      true -> calculate_numeral(decimal, tail, result)
    end
  end
end
