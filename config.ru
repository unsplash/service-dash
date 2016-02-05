require "sinatra"
require "tilt/erb"
require "mechanize"
require "config_env"
require "./dash"

ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")

run Sinatra::Application

use Rack::Auth::Basic, "Protected Area" do |username, password|
  [ENV["USERNAME"], ENV["PASSWORD"]].compact.empty? || username == ENV["USERNAME"] && password == ENV["PASSWORD"]
end



