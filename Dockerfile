FROM elixir:1.4.0

MAINTAINER Georgina McFadyen

ENV REFRESHED_AT 2017-08-26

# Install hex
RUN /usr/local/bin/mix local.hex --force && \
    /usr/local/bin/mix local.rebar --force && \
    /usr/local/bin/mix hex.info

WORKDIR /app
COPY . .

RUN mix deps.get

EXPOSE 3000

CMD ["mix", "phoenix.server"]
