require 'sinatra'
require 'httparty'
require 'json'
require 'net/http'

post '/*' do
  host = request.env['HTTP_X_FORWARD_TO']
  halt 400 unless host

  path = request.path
  query = JSON.parse(request.body.read, symbolize_names: true).merge(request.params)
  HTTParty.get("#{host}#{path}", headers: { cookie: request.env['HTTP_COOKIE'] }, query: query, debug_output: STDOUT).body
end
