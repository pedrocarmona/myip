#!/usr/bin/env ruby

require 'sinatra'

configure { set :server, :puma }

class Pumatra < Sinatra::Base
  get '/' do
    request.ip
  end

  run! if app_file == $0
end

