require 'sinatra'
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
    @pic_msg = params[:pic_msg]
    if @pic_msg != nil
      send_spam(@phone_number, @message, @times, @pic_msg)
    else
      send_spam(@phone_number, @message, @times)
    end
  end

  get '/' do
    redirect :index
  end
end
