require 'erubi'
require 'sinatra'
require './command'

set :erb, :escape_html => true

if development?
  require 'sinatra/reloader'
  also_reload './command.rb'
end

# Define a route at the root '/' of the app.
get '/' do
  @command = Command.new
  @output, @error = @command.exec("ls") #replate 'ls' with the command you want to execute

  # Render the view
  erb :index
end
