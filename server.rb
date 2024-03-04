# server.rb
require 'webrick'

root = File.expand_path('views')
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root

trap 'INT' do server.shutdown end

server.start
