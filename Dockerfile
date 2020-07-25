# Elixir + Phoenix

FROM elixir:latest

# Install debian packages
RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force
RUN curl -o phauxth_new.ez https://github.com/phoenixframework/archives/raw/master/1.4-dev/phx_new.ez
RUN mix archive.install ./phauxth_new.ez

# Install node
RUN curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs

WORKDIR /app
EXPOSE 4000
