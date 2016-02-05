require "sinatra"
require "tilt/erb"
require "mechanize"
require "config_env"
require "./dash"

ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")

run Sinatra::Application

# map "/" do
#   use Rack::Auth::Basic, "Protected Area" do |username, password|
#     username == ENV["USERNAME"] && password == ENV["PASSWORD"]
#   end
# end


