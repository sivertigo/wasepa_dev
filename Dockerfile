FROM ruby:latest

MAINTAINER Takuya Sugawara <sg.tak22@gmail.com>
ENV APP_ROOT /usr/src/wasepa_app
ADD ./wasepa_app /usr/src/wasepa_app
WORKDIR $APP_ROOT
RUN bundle install

#RUN gem install rails --version=5.0.0.1
RUN rails new rails_sample --api --skip-active-record --skip-bundle
WORKDIR /usr/src/wasepa_app/rails_sample/ 
RUN echo "gem 'mongoid'" >> Gemfile 
RUN bundle install 
RUN rails g mongoid:config 

