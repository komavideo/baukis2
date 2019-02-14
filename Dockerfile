FROM oiax/rails6-deps:latest

RUN mkdir /baukis2
RUN chown devel:devel /baukis2

WORKDIR /baukis2
COPY Gemfile /baukis2/Gemfile
COPY Gemfile.lock /baukis2/Gemfile.lock
RUN bundle install
COPY . /baukis2
