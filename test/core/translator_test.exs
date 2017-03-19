defmodule RomanNumerals.TranslatorTest do
  use ExUnit.Case
  alias RomanNumerals.Translator

  test "1 converts to I" do
    roman_numeral = Translator.convert(1)
    assert roman_numeral == "I"
  end

  test "2 converts to II" do
    roman_numeral = Translator.convert(2)
    assert roman_numeral == "II"
  end

  test "3 converts to III" do
    roman_numeral = Translator.convert(3)
    assert roman_numeral == "III"
  end

  test "4 converts to IV" do
    roman_numeral = Translator.convert(4)
    assert roman_numeral == "IV"
  end

  test "5 converts to V" do
    roman_numeral = Translator.convert(5)
    assert roman_numeral == "V"
  end

  test "9 converts to IX" do
    roman_numeral = Translator.convert(9)
    assert roman_numeral == "IX"
  end

  test "10 converts to X" do
    roman_numeral = Translator.convert(10)
    assert roman_numeral == "X"
  end

  test "15 converts to XV" do
    roman_numeral = Translator.convert(15)
    assert roman_numeral == "XV"
  end

  test "20 converts to XX" do
    roman_numeral = Translator.convert(20)
    assert roman_numeral == "XX"
  end

  test "50 converts to L" do
    roman_numeral = Translator.convert(50)
    assert roman_numeral == "L"
  end

  test "90 converts to XC" do
    roman_numeral = Translator.convert(90)
    assert roman_numeral == "XC"
  end
  test "100 converts to C" do
    roman_numeral = Translator.convert(100)
    assert roman_numeral == "C"
  end

  test "500 converts to D" do
    roman_numeral = Translator.convert(500)
    assert roman_numeral == "D"
  end

  test "900 converts to CM" do
    roman_numeral = Translator.convert(900)
    assert roman_numeral == "CM"
  end

  test "1000 converts to M" do
    roman_numeral = Translator.convert(1000)
    assert roman_numeral == "M"
  end

  test "3999 converts to MMCMCIX" do
    roman_numeral = Translator.convert(3999)
    assert roman_numeral == "MMMCMXCIX"
  end

  test "unknown numeral does not translate" do
    roman_numeral = Translator.convert(0)
    assert roman_numeral == ""
  end
end
