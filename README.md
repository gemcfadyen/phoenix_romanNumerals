# RomanNumerals

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000/romanNumerals`](http://localhost:4000/romanNumerals) from your browser.

There is a docker file included in this repository. To use it follow the steps below:

  * Install docker on your computer
  * `docker build -t roman-numerals`
  * `docker run -it -p 4000:4000 roman-numerals`
  (The `i` is interactive, and the `t` allows the friendly name `roman-numerals` to be used. You can drop the `-it` if you would like).

Navigate to localhost:4000/romanNumerals to use the application.
