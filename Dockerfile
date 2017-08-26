FROM elixir:1.4.0

MAINTAINER Georgina McFadyen

ENV REFRESHED_AT 2017-08-26

# Install hex
RUN /usr/local/bin/mix local.hex --force && \
    /usr/local/bin/mix local.rebar --force && \
    /usr/local/bin/mix hex.info

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

EXPOSE 4000
ENV MIX_ENV=dev PORT=4000

WORKDIR /app
COPY . .

RUN mix deps.get

CMD ["mix", "phoenix.server"]
