defmodule RomanNumerals.RomanNumeralsControllerTest do
  use RomanNumerals.ConnCase

  test "GET /romanNumerals", %{conn: conn} do
    conn = get conn, "/romanNumerals"
    assert html_response(conn, 200) =~ "Enter a number to convert"
  end

  test "GET /display", %{conn: conn} do
    conn = get conn, "/display/IV"
    assert conn.resp_body =~ "IV"
    assert conn.status == 200
  end

  test "GET /display for blank numeral reprompts user", %{conn: conn} do
    conn = get conn, "/display/"
    assert conn.resp_body =~ "Enter a number to convert"
    assert conn.status == 200
  end

  test "POST /convert with valid input", %{conn: conn} do
    conn = post conn, "/convert", decimal: "5"
    assert conn.status == 302
  end

  test "POST /convert with invalid input redirects", %{conn: conn} do
    conn = post conn, "/convert", decimal: "abc"

    assert conn.status == 302
  end
end
