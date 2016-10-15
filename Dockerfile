FROM ruby:latest

MAINTAINER Takuya Sugawara <sg.tak22@gmail.com>

#VOLUME ./rails_sample:/root/wasepa_app/
ENV APP_ROOT /root
#ENV APP_ROOT /root/rails_sample
#ADD ./wasepa_app /root/wasepa_app
ADD ./Gemfile /root
WORKDIR $APP_ROOT
#WORKDIR /root/wasepa_app/rails_sample
#ADD ./rails_sample /root/rails_sample
RUN bundle install

#RUN gem install rails --version=5.0.0.1
#RUN rails new rails_sample --api --skip-active-record --skip-bundle
#WORKDIR /root/wasepa_app/rails_sample/ 
#RUN echo "gem 'mongoid'" >> Gemfile 
#RUN bundle install 
#RUN rails g mongoid:config 

#VOLUME ./wasepa_app/rails_sample:/root/wasepa_app/
