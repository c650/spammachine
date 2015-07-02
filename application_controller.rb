require 'Sinatra'
require 'bundler'
Bundler.require
require 'twilio-ruby'
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
  	@phone_number = params[:phone_number]
  	@message = params[:message]
  	@times = params[:times]

    send_spam(@phone_number, @message, @times)
  end

  get '/' do
    erb :index
  end
end
