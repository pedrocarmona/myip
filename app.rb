#!/usr/bin/env ruby

require 'sinatra'
require 'slim'

configure { set :server, :puma }

class Pumatra < Sinatra::Base
  get '/' do
    @ip = request.ip
    @title = @ip

    slim :index
  end

  get '/api' do
    request.ip
  end

  run! if app_file == $0
end

