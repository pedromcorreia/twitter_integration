FROM elixir:latest

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar --force

ENV MIX_ENV prod
ENV PORT 5000

RUN mix deps.get
RUN mix deps.compile

EXPOSE 5000

CMD ["mix", "phx.server"]
