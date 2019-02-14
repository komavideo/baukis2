FROM ruby:2.6
WORKDIR /tmp
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

RUN mkdir /baukis2
WORKDIR /baukis2
COPY Gemfile /baukis2/Gemfile
COPY Gemfile.lock /baukis2/Gemfile.lock
RUN bundle install
COPY . /baukis2

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
