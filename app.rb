require 'sinatra'

configure { set :server, :puma }

get '/' do
  request.ip
end
