#!/usr/bin/env ruby

require 'sinatra'
require 'slim'
require 'json'

configure { set :server, :puma }

class Pumatra < Sinatra::Base
  get '/' do
    @ip = request.ip
    @title = @ip

    slim :index
  end

  get 'ip.json' do
    content_type :json
    { ip: request.ip }.to_json
  end

  run! if app_file == $0
end

